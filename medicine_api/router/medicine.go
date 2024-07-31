package router

import (
	"github.com/gin-gonic/gin"
	"google.golang.org/grpc"
	"medicine_api/api"
	"medicine_api/config"
	"medicine_api/proto"
)

func medicineRouter(r *gin.RouterGroup, conn *grpc.ClientConn, cfg *config.Config) {
	userServerClient := proto.NewMedicineClient(conn)
	medicineAPI := api.Medicine{
		Client: userServerClient,
		Config: cfg,
	}
	userGroup := r.Group("medicine")
	{
		userGroup.POST("/search", medicineAPI.SearchMedicine)
	}
}
