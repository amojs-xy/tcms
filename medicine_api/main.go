package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"log"
	"medicine_api/config"
	"medicine_api/router"
	"medicine_api/util"
)

func main() {
	cfg, err := config.Init()

	if err != nil {
		log.Fatalf("配置文件初始化错误：%s", err.Error())
		return
	}

	util.NewLogger(cfg.Log)

	if err := util.CreateTranslator("zh"); err != nil {
		zap.S().Errorf("获取翻译器出错: %s", err.Error())
		return
	}

	r := gin.Default()

	conn, err := util.GrpcDial(*cfg.MedicineService)

	if err != nil {
		zap.S().Errorf("gRPC拨号连接失败：%s", err.Error())
		return
	}

	router.Init(r, conn, cfg)

	if err := r.Run(fmt.Sprintf("%s:%d", cfg.MedicineAPI.IP, cfg.MedicineAPI.PORT)); err != nil {
		zap.S().Errorf("服务器启动失败：%s", err.Error())
		return
	}
}
