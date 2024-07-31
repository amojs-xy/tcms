package main

import (
	"go.uber.org/zap"
	"log"
	"medicine_service/config"
	"medicine_service/handler"
	"medicine_service/proto"
	"medicine_service/util"
)

func main() {
	cfg, err := config.Init()

	if err != nil {
		log.Fatalf("配置文件初始化错误：%s", err.Error())
		return
	}

	util.NewLogger(cfg.Log)

	db, err := util.DBConnect(cfg.DB)

	if err != nil {
		zap.S().Errorf("连接数据库失败: %s", err.Error())
		return
	}

	gServer, listener, err := util.GrpcServer(cfg.GRPC, nil)

	if err != nil {
		zap.S().Errorf("创建gRPC服务失败: %s", err.Error())
		return
	}

	proto.RegisterMedicineServer(gServer, &handler.Medicine{
		DB: db,
	})

	if err := gServer.Serve(listener); err != nil {
		zap.S().Errorf("启动gRPC服务失败: %s", err.Error())
		return
	}
}
