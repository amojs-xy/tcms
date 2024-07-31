package util

import (
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
	"gopkg.in/natefinch/lumberjack.v2"
	"log"
	"medicine_service/config"
)

type LoggerConfig struct {
	Mode       string
	FilePath   string
	MaxSize    int
	MaxBackups int
	MaxAge     int
	Level      zapcore.LevelEnabler
}

func NewLogger(cfg *config.Log) *zap.Logger {
	isDEV := config.GetENV(config.FileConfig["env"])
	lumberLogger := &lumberjack.Logger{
		Filename:   cfg.FilePath,
		MaxSize:    cfg.MaxSize,
		MaxBackups: cfg.MaxBackups,
		MaxAge:     cfg.MaxAge,
		Compress:   true,
	}

	defer func(lumberLogger *lumberjack.Logger) {
		err := lumberLogger.Close()
		if err != nil {
			log.Fatal("Failed to close logger")
			return
		}
	}(lumberLogger)

	var _cfg zapcore.EncoderConfig

	if isDEV {
		_cfg = zap.NewDevelopmentEncoderConfig()
	} else {
		_cfg = zap.NewProductionEncoderConfig()
	}

	_cfg.EncodeTime = zapcore.ISO8601TimeEncoder
	fileEncoder := zapcore.NewConsoleEncoder(_cfg)

	core := zapcore.NewCore(fileEncoder, zapcore.AddSync(lumberLogger), config.ZapLevel)

	logger := zap.New(core)

	defer func(logger *zap.Logger) {
		err := logger.Sync()
		if err != nil {
			log.Fatal("Failed to sync")
			return
		}
	}(logger)

	zap.ReplaceGlobals(logger)

	return logger
}
