package util

import (
	"fmt"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"medicine_api/config"
)

func GrpcDial(config config.MedicineService) (*grpc.ClientConn, error) {
	conn, err := grpc.Dial(fmt.Sprintf("%s:%d", config.IP, config.PORT), grpc.WithTransportCredentials(insecure.NewCredentials()))
	return conn, err
}
