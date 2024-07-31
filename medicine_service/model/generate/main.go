package main

import (
	"log"
	"medicine_service/config"
	"medicine_service/model"
	"medicine_service/util"
)

func main() {
	cfg, err := config.Init()

	if err != nil {
		log.Fatalf("配置文件初始化错误：%s", err.Error())
		return
	}

	db, errConn := util.DBConnect(cfg.DB)
	//
	if errConn != nil {
		log.Fatalf("Failed to connect DB: %v", errConn)
		return
	}

	if errMigrate := db.AutoMigrate(
		&model.Medicine{},
	); errMigrate != nil {
		log.Fatalf("Failed to migrate the data model: %v", errMigrate)
		return
	}

	defer util.DBClose(db)
}
