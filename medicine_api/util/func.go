package util

import (
	"github.com/gin-gonic/gin"
	"github.com/go-playground/validator/v10"
	"go.uber.org/zap"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"net/http"
)

/**
  HTTP 状态码是给服务端和客户端提示HTTP传输数据的状态
  自定义的状态码是给服务端和客户端提示项目中在操作数据的情况结果是什么样的
*/

func HandleBindingError(c *gin.Context, err error) {
	vErr, ok := err.(validator.ValidationErrors)

	if !ok {
		c.JSON(http.StatusOK, gin.H{
			"code": 1,
			"msg":  err.Error(),
		})
		return
	}

	c.JSON(http.StatusBadRequest, gin.H{
		"code": 1,
		"msg":  RemoveStructName(vErr.Translate(Translator)),
	})
}

func HandleGrpcError(c *gin.Context, err error, methodName string) {
	zap.S().Errorf("远程调用{%s}方法出错：%s", methodName, err.Error())
	transferGrpcErrorToHttpError(err, c)
	return
}

func transferGrpcErrorToHttpError(err error, c *gin.Context) {
	if err, ok := status.FromError(err); ok {
		switch err.Code() {
		case codes.NotFound:
			c.JSON(http.StatusNotFound, gin.H{
				"msg": "未找到接口服务",
			})
		case codes.Internal:
			c.JSON(http.StatusOK, gin.H{
				"code": 1,
				"msg":  "未找到查询对象",
			})
		case codes.InvalidArgument:
			c.JSON(http.StatusBadRequest, gin.H{
				"msg": "请求参数错误",
			})
		default:
			c.JSON(http.StatusInternalServerError, gin.H{
				"msg": "服务器内部错误",
			})
		}
		return
	}
}
