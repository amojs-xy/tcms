package model

type MedicineCharacter struct {
	GormModel
	Id   int32  `gorm:"primarykey;type:int"`
	Name string `gorm:"type:varchar(255);not null;comment:药品性状名称"`
}
