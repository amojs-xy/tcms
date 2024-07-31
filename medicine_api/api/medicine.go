package api

import (
	"context"
	"github.com/gin-gonic/gin"
	"medicine_api/config"
	"medicine_api/dto"
	"medicine_api/proto"
	"medicine_api/util"
	"net/http"
)

type Medicine struct {
	Client proto.MedicineClient
	Config *config.Config
}

func (m *Medicine) SearchMedicine(c *gin.Context) {
	var body dto.SearchMedicineBody

	if err := c.ShouldBind(&body); err != nil {
		util.HandleBindingError(c, err)
		return
	}

	resp, err := m.Client.SearchMedicine(context.Background(), &proto.MedicineSearchRequest{
		Keyword: body.Keyword,
	})

	if err != nil {
		util.HandleGrpcError(c, err, "SearchMedicine")
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"code": 0,
		"msg":  "ok",
		"data": resp.MedicineList,
	})

}
