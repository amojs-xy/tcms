package middleware

import (
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"medicine_api/config"
)

func Cors(origins config.AllowOrigins) gin.HandlerFunc {
	corsCfg := cors.DefaultConfig()
	corsCfg.AllowOrigins = origins
	corsCfg.AllowMethods = []string{"GET", "POST", "PUT", "DELETE", "PATCH", "OPTIONS"}
	corsCfg.AllowHeaders = []string{"Content-Type", "Origin"}
	corsCfg.AllowCredentials = true

	return cors.New(corsCfg)
}
