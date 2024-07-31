package util

import (
	"fmt"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"medicine_service/config"
	"net"
)

func GrpcServer(cfg *config.GRPC, options []grpc.ServerOption) (*grpc.Server, net.Listener, error) {
	gServer := grpc.NewServer(options...)
	listener, err := net.Listen("tcp", fmt.Sprintf("%s:%d", cfg.Host, cfg.Port))
	return gServer, listener, err
}

func GrpcDial(cfg *config.GRPC) (*grpc.ClientConn, error) {
	conn, err := grpc.Dial(fmt.Sprintf("%s:%d", cfg.Host, cfg.Port), grpc.WithTransportCredentials(insecure.NewCredentials()))
	return conn, err
}
