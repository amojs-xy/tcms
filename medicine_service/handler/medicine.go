package handler

import (
	"context"
	"github.com/amojs-xy/tools/array"
	"gorm.io/gorm"
	"medicine_service/model"
	"medicine_service/proto"
)

type Medicine struct {
	DB *gorm.DB
	proto.UnimplementedMedicineServer
}

func MedicineModelToResponse(medicine model.Medicine) *proto.MedicineInfo {
	var price float32 = 0
	var unit = ""

	if medicine.Unit != "斤" {
		price = medicine.Price
		unit = medicine.Unit

	} else {
		price = medicine.Price / 500
		unit = "g"
	}

	return &proto.MedicineInfo{
		Id:             medicine.Id,
		Cid:            medicine.Cid,
		Scid:           medicine.Scid,
		Name:           medicine.Name,
		Alias:          medicine.Alias,
		CharacterId:    medicine.CharacterId,
		TastingIds:     medicine.TastingIds,
		AttributionIds: medicine.AttributionIds,
		Effect:         medicine.Effect,
		Toxic:          medicine.Toxic,
		Price:          price,
		Unit:           unit,
		JinPrice:       medicine.Price,
	}
}

func (m Medicine) SearchMedicine(ctx context.Context, r *proto.MedicineSearchRequest) (*proto.MedicineSearchResponse, error) {
	kw := r.Keyword

	var medicineList []model.Medicine

	result := m.DB.Where("(name LIKE ?) or (pinyin LIKE ?) or (abbr LIKE ?) or (alias LIKE ?)", "%"+kw+"%", "%"+kw+"%", "%"+kw+"%", "%"+kw+"%").Find(&medicineList)

	if result.Error != nil {
		return nil, result.Error
	}

	response := &proto.MedicineSearchResponse{}

	for _, medicine := range medicineList {
		medicineInfo := MedicineModelToResponse(medicine)
		array.Push(&response.MedicineList, medicineInfo)
	}

	return response, nil
}

func (m Medicine) SubmitPrescription(ctx context.Context, r *proto.PrescriptionRequest) (*proto.PrescriptionResponse, error) {
	//TODO implement me
	panic("implement me")
}
