package model

type MedicineSubcategory struct {
	GormModel
	Id   int32  `gorm:"primarykey;type:int"`
	Pid  int32  `gorm:"default:0;type:int;not null;comment:药品大类目ID"`
	Name string `gorm:"type:varchar(255);not null;comment:药品子类名称"`
}
