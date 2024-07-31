package config

import (
	"fmt"
	"github.com/fsnotify/fsnotify"
	"github.com/spf13/viper"
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
)

type DB struct {
	Host     string `mapstructure:"host"`
	Port     int    `mapstructure:"port"`
	User     string `mapstructure:"user"`
	Password string `mapstructure:"password"`
	DBName   string `mapstructure:"db_name"`
}

type GRPC struct {
	Host string `mapstructure:"host"`
	Port int    `mapstructure:"port"`
}

type Log struct {
	FilePath   string `mapstructure:"file_path"`
	MaxSize    int    `mapstructure:"max_size"`
	MaxBackups int    `mapstructure:"max_backups"`
	MaxAge     int    `mapstructure:"max_age"`
}

type Pagination struct {
	PN int32 `mapstructure:"pn"`
	PS int32 `mapstructure:"ps"`
}

type Config struct {
	*DB         `mapstructure:"db"`
	*GRPC       `mapstructure:"grpc"`
	*Log        `mapstructure:"log"`
	*Pagination `mapstructure:"pagination"`
}

var ZapLevel = zapcore.InfoLevel

var cfg = new(Config)

var FileConfig = map[string]string{
	"prefix": "config-",
	"ext":    ".yaml",
	"env":    "TCMS_MEDICINE_ENV",
}

func GetENV(env string) bool {
	viper.AutomaticEnv()
	return viper.GetBool(env)
}

func getENVFile() string {
	var configFile string
	isDEV := GetENV(FileConfig["env"])

	if isDEV {
		configFile = fmt.Sprintf("./config/%sdev%s", FileConfig["prefix"], FileConfig["ext"])
	} else {
		configFile = fmt.Sprintf("./config/%sprod%s", FileConfig["prefix"], FileConfig["ext"])
	}

	return configFile
}

func Init() (*Config, error) {
	configFilePath := getENVFile()

	viper.SetConfigFile(configFilePath)
	viper.WatchConfig()
	viper.OnConfigChange(func(e fsnotify.Event) {
		if err := viper.Unmarshal(&cfg); err != nil {
			zap.S().Errorf("配置解析出错：%s", err.Error())
			return
		}
	})

	if err := viper.ReadInConfig(); err != nil {
		return nil, err
	}

	if err := viper.Unmarshal(&cfg); err != nil {
		return nil, err
	}

	return cfg, nil
}
