package model

type Medicine struct {
	GormModel
	Id             int32   `gorm:"primarykey"`
	Cid            int32   `gorm:"default:0;type:int;not null;comment:药品大类目"`
	Scid           int32   `gorm:"default:0;type:int;not null;comment:药品子类目"`
	Name           string  `gorm:"type:varchar(255);not null;unique;comment:药品名称"`
	Pinyin         string  `gorm:"type:varchar(255);not null;comment:药品拼音名称"`
	Abbr           string  `gorm:"type:varchar(255);not null;comment:药品拼音简写"`
	Alias          string  `gorm:"default:无;type:varchar(255);not null;comment:药品别名"`
	CharacterId    int32   `gorm:"default:0;type:int;not null;comment:药性，如温、寒等"`
	TastingIds     string  `gorm:"default:无;type:varchar(255);not null;comment:药味集合"`
	AttributionIds string  `gorm:"default:无;type:varchar(255);not null;comment:药品属性集合，如肝、胆等"`
	Effect         string  `gorm:"default:无;type:varchar(255);not null;comment:药效"`
	Unit           string  `gorm:"default:斤;type:varchar(10);not null;comment:药品进货单位"`
	Toxic          int32   `gorm:"default:0;type:tinyint(1);not null;comment:药品有无毒性"`
	Price          float32 `gorm:"default:0;type:decimal(10);not null;comment:药品进货价格"`
}
