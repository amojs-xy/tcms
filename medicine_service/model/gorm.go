package model

import (
	"gorm.io/gorm"
	"time"
)

type GormModel struct {
	CreateAt  *time.Time      `json:"create_at" gorm:"default:null"`
	UpdatedAt *time.Time      `json:"updated_at" gorm:"default:null"`
	DeletedAt *gorm.DeletedAt `json:"deleted_at" gorm:"index,default:null"`
	IsDeleted bool            `json:"is_deleted"`
}
