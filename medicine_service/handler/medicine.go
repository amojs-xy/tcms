package handler

import (
	"context"
	"github.com/amojs-xy/tools/array"
	"gorm.io/gorm"
	"medicine_service/model"
	"medicine_service/proto"
	"medicine_service/util"
)

type Medicine struct {
	DB *gorm.DB
	proto.UnimplementedMedicineServer
}

func MedicineModelToResponse(medicine model.Medicine, tastingList string, attributionList string) *proto.MedicineInfo {
	var price float32 = 0
	var unit = ""

	if medicine.Unit != "斤" {
		price = medicine.Price
		unit = medicine.Unit

	} else {
		price = medicine.Price / 500
		unit = "g"
	}

	medicineCategory := &proto.MedicineCatetory{
		Id:   medicine.MedicineCategory.Id,
		Name: medicine.MedicineCategory.Name,
	}

	medicineSubcategory := &proto.MedicineSubcatetory{
		Id:   medicine.MedicineSubcategory.Id,
		Pid:  medicine.MedicineSubcategory.Pid,
		Name: medicine.MedicineSubcategory.Name,
	}

	medicineCharacter := &proto.MedicineCharacter{
		Id:   medicine.MedicineCharacter.Id,
		Name: medicine.MedicineCharacter.Name,
	}

	return &proto.MedicineInfo{
		Id:                   medicine.Id,
		Cid:                  medicine.Cid,
		Scid:                 medicine.Scid,
		Name:                 medicine.Name,
		Alias:                medicine.Alias,
		CharacterId:          medicine.CharacterId,
		TastingIds:           medicine.TastingIds,
		AttributionIds:       medicine.AttributionIds,
		Effect:               medicine.Effect,
		Toxic:                medicine.Toxic,
		Price:                price,
		Unit:                 unit,
		JinPrice:             medicine.Price,
		MedicineCatetory:     medicineCategory,
		MedicineSubcatetory:  medicineSubcategory,
		MedicineCharacter:    medicineCharacter,
		MedicineTastings:     tastingList,
		MedicineAttributions: attributionList,
	}
}

func (m Medicine) SearchMedicine(ctx context.Context, r *proto.MedicineSearchRequest) (*proto.MedicineSearchResponse, error) {
	kw := r.Keyword

	var medicineList []model.Medicine

	result := m.DB.
		Preload("MedicineCategory").
		Preload("MedicineSubcategory").
		Preload("MedicineCharacter").
		Where("(name LIKE ?) or (pinyin LIKE ?) or (abbr LIKE ?) or (alias LIKE ?)", "%"+kw+"%", "%"+kw+"%", "%"+kw+"%", "%"+kw+"%").
		Find(&medicineList)

	if result.Error != nil {
		return nil, result.Error
	}

	response := &proto.MedicineSearchResponse{}

	for _, medicine := range medicineList {
		var tastingItem []model.MedicineTasting
		var attributionItem []model.MedicineAttribution
		var tastingList string
		var attributionList string
		tastingSlice := util.StringToNumberSlice(medicine.TastingIds)
		attributionSlice := util.StringToNumberSlice(medicine.AttributionIds)

		m.DB.Where(tastingSlice).Find(&tastingItem)

		for _, t := range tastingItem {
			tastingList += t.Name + ","
		}

		m.DB.Where(attributionSlice).Find(&attributionItem)

		for _, t := range attributionItem {
			attributionList += t.Name + ","
		}

		medicineInfo := MedicineModelToResponse(medicine, tastingList[0:len(tastingList)-1], attributionList[0:len(attributionList)-1])
		array.Push(&response.MedicineList, medicineInfo)
	}

	return response, nil
}

func (m Medicine) SubmitPrescription(ctx context.Context, r *proto.PrescriptionRequest) (*proto.PrescriptionResponse, error) {
	//TODO implement me
	panic("implement me")
}
