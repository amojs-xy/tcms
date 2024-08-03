package model

type MedicineTasting struct {
	GormModel
	Id   int32  `gorm:"primarykey;type:int"`
	Name string `gorm:"type:varchar(255);not null;comment:药品味道名称"`
}
