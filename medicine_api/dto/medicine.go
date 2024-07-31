package dto

type SearchMedicineBody struct {
	Keyword string `json:"keyword" binding:"required,min=1,max=100"`
}
