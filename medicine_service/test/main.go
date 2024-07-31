package main

import (
	"context"
	"fmt"
	"log"
	"medicine_service/config"
	"medicine_service/proto"
	"medicine_service/util"
)

func main() {
	cfg, err := config.Init()

	if err != nil {
		log.Fatalf("配置文件初始化错误：%s", err.Error())
		return
	}

	conn, err := util.GrpcDial(cfg.GRPC)
	if err != nil {
		return
	}

	medicineServerClient := proto.NewMedicineClient(conn)

	resp, err := medicineServerClient.SearchMedicine(context.Background(), &proto.MedicineSearchRequest{
		Keyword: "ds",
	})

	if err != nil {
		fmt.Println(err.Error())
		return
	}

	fmt.Println(resp.MedicineList)

}
