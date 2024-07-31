package router

import (
	"github.com/gin-gonic/gin"
	"google.golang.org/grpc"
	"medicine_api/config"
)

func Init(r *gin.Engine, conn *grpc.ClientConn, cfg *config.Config) {
	versionGroup := r.Group("v1")
	medicineRouter(versionGroup, conn, cfg)
}
