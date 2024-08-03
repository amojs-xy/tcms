// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        (unknown)
// source: medicine.proto

package proto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type MedicineSearchRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Keyword string `protobuf:"bytes,1,opt,name=Keyword,proto3" json:"Keyword,omitempty"`
}

func (x *MedicineSearchRequest) Reset() {
	*x = MedicineSearchRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_medicine_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *MedicineSearchRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MedicineSearchRequest) ProtoMessage() {}

func (x *MedicineSearchRequest) ProtoReflect() protoreflect.Message {
	mi := &file_medicine_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MedicineSearchRequest.ProtoReflect.Descriptor instead.
func (*MedicineSearchRequest) Descriptor() ([]byte, []int) {
	return file_medicine_proto_rawDescGZIP(), []int{0}
}

func (x *MedicineSearchRequest) GetKeyword() string {
	if x != nil {
		return x.Keyword
	}
	return ""
}

type MedicineInfo struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id             int32   `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
	Cid            int32   `protobuf:"varint,2,opt,name=cid,proto3" json:"cid,omitempty"`
	Scid           int32   `protobuf:"varint,3,opt,name=scid,proto3" json:"scid,omitempty"`
	Name           string  `protobuf:"bytes,4,opt,name=name,proto3" json:"name,omitempty"`
	Alias          string  `protobuf:"bytes,5,opt,name=alias,proto3" json:"alias,omitempty"`
	CharacterId    int32   `protobuf:"varint,6,opt,name=characterId,proto3" json:"characterId,omitempty"`
	TastingIds     string  `protobuf:"bytes,7,opt,name=tastingIds,proto3" json:"tastingIds,omitempty"`
	AttributionIds string  `protobuf:"bytes,8,opt,name=attributionIds,proto3" json:"attributionIds,omitempty"`
	Effect         string  `protobuf:"bytes,9,opt,name=effect,proto3" json:"effect,omitempty"`
	Toxic          int32   `protobuf:"varint,11,opt,name=toxic,proto3" json:"toxic,omitempty"`
	Price          float32 `protobuf:"fixed32,12,opt,name=price,proto3" json:"price,omitempty"`
	Unit           string  `protobuf:"bytes,13,opt,name=unit,proto3" json:"unit,omitempty"`
	JinPrice       float32 `protobuf:"fixed32,14,opt,name=jinPrice,proto3" json:"jinPrice,omitempty"`
}

func (x *MedicineInfo) Reset() {
	*x = MedicineInfo{}
	if protoimpl.UnsafeEnabled {
		mi := &file_medicine_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *MedicineInfo) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MedicineInfo) ProtoMessage() {}

func (x *MedicineInfo) ProtoReflect() protoreflect.Message {
	mi := &file_medicine_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MedicineInfo.ProtoReflect.Descriptor instead.
func (*MedicineInfo) Descriptor() ([]byte, []int) {
	return file_medicine_proto_rawDescGZIP(), []int{1}
}

func (x *MedicineInfo) GetId() int32 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *MedicineInfo) GetCid() int32 {
	if x != nil {
		return x.Cid
	}
	return 0
}

func (x *MedicineInfo) GetScid() int32 {
	if x != nil {
		return x.Scid
	}
	return 0
}

func (x *MedicineInfo) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *MedicineInfo) GetAlias() string {
	if x != nil {
		return x.Alias
	}
	return ""
}

func (x *MedicineInfo) GetCharacterId() int32 {
	if x != nil {
		return x.CharacterId
	}
	return 0
}

func (x *MedicineInfo) GetTastingIds() string {
	if x != nil {
		return x.TastingIds
	}
	return ""
}

func (x *MedicineInfo) GetAttributionIds() string {
	if x != nil {
		return x.AttributionIds
	}
	return ""
}

func (x *MedicineInfo) GetEffect() string {
	if x != nil {
		return x.Effect
	}
	return ""
}

func (x *MedicineInfo) GetToxic() int32 {
	if x != nil {
		return x.Toxic
	}
	return 0
}

func (x *MedicineInfo) GetPrice() float32 {
	if x != nil {
		return x.Price
	}
	return 0
}

func (x *MedicineInfo) GetUnit() string {
	if x != nil {
		return x.Unit
	}
	return ""
}

func (x *MedicineInfo) GetJinPrice() float32 {
	if x != nil {
		return x.JinPrice
	}
	return 0
}

type MedicineSearchResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	MedicineList []*MedicineInfo `protobuf:"bytes,1,rep,name=medicineList,proto3" json:"medicineList,omitempty"`
}

func (x *MedicineSearchResponse) Reset() {
	*x = MedicineSearchResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_medicine_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *MedicineSearchResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MedicineSearchResponse) ProtoMessage() {}

func (x *MedicineSearchResponse) ProtoReflect() protoreflect.Message {
	mi := &file_medicine_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MedicineSearchResponse.ProtoReflect.Descriptor instead.
func (*MedicineSearchResponse) Descriptor() ([]byte, []int) {
	return file_medicine_proto_rawDescGZIP(), []int{2}
}

func (x *MedicineSearchResponse) GetMedicineList() []*MedicineInfo {
	if x != nil {
		return x.MedicineList
	}
	return nil
}

type PrescriptionMedicine struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	MedicineId   int32   `protobuf:"varint,2,opt,name=medicineId,proto3" json:"medicineId,omitempty"`
	MedicineName string  `protobuf:"bytes,3,opt,name=medicineName,proto3" json:"medicineName,omitempty"`
	Dose         float32 `protobuf:"fixed32,4,opt,name=dose,proto3" json:"dose,omitempty"`
	Price        float32 `protobuf:"fixed32,5,opt,name=price,proto3" json:"price,omitempty"`
}

func (x *PrescriptionMedicine) Reset() {
	*x = PrescriptionMedicine{}
	if protoimpl.UnsafeEnabled {
		mi := &file_medicine_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PrescriptionMedicine) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PrescriptionMedicine) ProtoMessage() {}

func (x *PrescriptionMedicine) ProtoReflect() protoreflect.Message {
	mi := &file_medicine_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PrescriptionMedicine.ProtoReflect.Descriptor instead.
func (*PrescriptionMedicine) Descriptor() ([]byte, []int) {
	return file_medicine_proto_rawDescGZIP(), []int{3}
}

func (x *PrescriptionMedicine) GetMedicineId() int32 {
	if x != nil {
		return x.MedicineId
	}
	return 0
}

func (x *PrescriptionMedicine) GetMedicineName() string {
	if x != nil {
		return x.MedicineName
	}
	return ""
}

func (x *PrescriptionMedicine) GetDose() float32 {
	if x != nil {
		return x.Dose
	}
	return 0
}

func (x *PrescriptionMedicine) GetPrice() float32 {
	if x != nil {
		return x.Price
	}
	return 0
}

type PrescriptionRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	MedicineList []*PrescriptionMedicine `protobuf:"bytes,1,rep,name=medicineList,proto3" json:"medicineList,omitempty"`
}

func (x *PrescriptionRequest) Reset() {
	*x = PrescriptionRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_medicine_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PrescriptionRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PrescriptionRequest) ProtoMessage() {}

func (x *PrescriptionRequest) ProtoReflect() protoreflect.Message {
	mi := &file_medicine_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PrescriptionRequest.ProtoReflect.Descriptor instead.
func (*PrescriptionRequest) Descriptor() ([]byte, []int) {
	return file_medicine_proto_rawDescGZIP(), []int{4}
}

func (x *PrescriptionRequest) GetMedicineList() []*PrescriptionMedicine {
	if x != nil {
		return x.MedicineList
	}
	return nil
}

type PrescriptionResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	PrescriptionId int32                   `protobuf:"varint,1,opt,name=PrescriptionId,proto3" json:"PrescriptionId,omitempty"`
	MedicineTotal  int32                   `protobuf:"varint,2,opt,name=medicineTotal,proto3" json:"medicineTotal,omitempty"`
	TotalPrice     int32                   `protobuf:"varint,3,opt,name=totalPrice,proto3" json:"totalPrice,omitempty"`
	MedicineList   []*PrescriptionMedicine `protobuf:"bytes,4,rep,name=medicineList,proto3" json:"medicineList,omitempty"`
}

func (x *PrescriptionResponse) Reset() {
	*x = PrescriptionResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_medicine_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PrescriptionResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PrescriptionResponse) ProtoMessage() {}

func (x *PrescriptionResponse) ProtoReflect() protoreflect.Message {
	mi := &file_medicine_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PrescriptionResponse.ProtoReflect.Descriptor instead.
func (*PrescriptionResponse) Descriptor() ([]byte, []int) {
	return file_medicine_proto_rawDescGZIP(), []int{5}
}

func (x *PrescriptionResponse) GetPrescriptionId() int32 {
	if x != nil {
		return x.PrescriptionId
	}
	return 0
}

func (x *PrescriptionResponse) GetMedicineTotal() int32 {
	if x != nil {
		return x.MedicineTotal
	}
	return 0
}

func (x *PrescriptionResponse) GetTotalPrice() int32 {
	if x != nil {
		return x.TotalPrice
	}
	return 0
}

func (x *PrescriptionResponse) GetMedicineList() []*PrescriptionMedicine {
	if x != nil {
		return x.MedicineList
	}
	return nil
}

var File_medicine_proto protoreflect.FileDescriptor

var file_medicine_proto_rawDesc = []byte{
	0x0a, 0x0e, 0x6d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x22, 0x31, 0x0a, 0x15, 0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x53, 0x65, 0x61, 0x72,
	0x63, 0x68, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x18, 0x0a, 0x07, 0x4b, 0x65, 0x79,
	0x77, 0x6f, 0x72, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x4b, 0x65, 0x79, 0x77,
	0x6f, 0x72, 0x64, 0x22, 0xcc, 0x02, 0x0a, 0x0c, 0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65,
	0x49, 0x6e, 0x66, 0x6f, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05,
	0x52, 0x02, 0x69, 0x64, 0x12, 0x10, 0x0a, 0x03, 0x63, 0x69, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x05, 0x52, 0x03, 0x63, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x73, 0x63, 0x69, 0x64, 0x18, 0x03,
	0x20, 0x01, 0x28, 0x05, 0x52, 0x04, 0x73, 0x63, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61,
	0x6d, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x14,
	0x0a, 0x05, 0x61, 0x6c, 0x69, 0x61, 0x73, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x61,
	0x6c, 0x69, 0x61, 0x73, 0x12, 0x20, 0x0a, 0x0b, 0x63, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65,
	0x72, 0x49, 0x64, 0x18, 0x06, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0b, 0x63, 0x68, 0x61, 0x72, 0x61,
	0x63, 0x74, 0x65, 0x72, 0x49, 0x64, 0x12, 0x1e, 0x0a, 0x0a, 0x74, 0x61, 0x73, 0x74, 0x69, 0x6e,
	0x67, 0x49, 0x64, 0x73, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0a, 0x74, 0x61, 0x73, 0x74,
	0x69, 0x6e, 0x67, 0x49, 0x64, 0x73, 0x12, 0x26, 0x0a, 0x0e, 0x61, 0x74, 0x74, 0x72, 0x69, 0x62,
	0x75, 0x74, 0x69, 0x6f, 0x6e, 0x49, 0x64, 0x73, 0x18, 0x08, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0e,
	0x61, 0x74, 0x74, 0x72, 0x69, 0x62, 0x75, 0x74, 0x69, 0x6f, 0x6e, 0x49, 0x64, 0x73, 0x12, 0x16,
	0x0a, 0x06, 0x65, 0x66, 0x66, 0x65, 0x63, 0x74, 0x18, 0x09, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06,
	0x65, 0x66, 0x66, 0x65, 0x63, 0x74, 0x12, 0x14, 0x0a, 0x05, 0x74, 0x6f, 0x78, 0x69, 0x63, 0x18,
	0x0b, 0x20, 0x01, 0x28, 0x05, 0x52, 0x05, 0x74, 0x6f, 0x78, 0x69, 0x63, 0x12, 0x14, 0x0a, 0x05,
	0x70, 0x72, 0x69, 0x63, 0x65, 0x18, 0x0c, 0x20, 0x01, 0x28, 0x02, 0x52, 0x05, 0x70, 0x72, 0x69,
	0x63, 0x65, 0x12, 0x12, 0x0a, 0x04, 0x75, 0x6e, 0x69, 0x74, 0x18, 0x0d, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x04, 0x75, 0x6e, 0x69, 0x74, 0x12, 0x1a, 0x0a, 0x08, 0x6a, 0x69, 0x6e, 0x50, 0x72, 0x69,
	0x63, 0x65, 0x18, 0x0e, 0x20, 0x01, 0x28, 0x02, 0x52, 0x08, 0x6a, 0x69, 0x6e, 0x50, 0x72, 0x69,
	0x63, 0x65, 0x22, 0x4b, 0x0a, 0x16, 0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x53, 0x65,
	0x61, 0x72, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x31, 0x0a, 0x0c,
	0x6d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x18, 0x01, 0x20, 0x03,
	0x28, 0x0b, 0x32, 0x0d, 0x2e, 0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x49, 0x6e, 0x66,
	0x6f, 0x52, 0x0c, 0x6d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x22,
	0x84, 0x01, 0x0a, 0x14, 0x50, 0x72, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e,
	0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x12, 0x1e, 0x0a, 0x0a, 0x6d, 0x65, 0x64, 0x69,
	0x63, 0x69, 0x6e, 0x65, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0a, 0x6d, 0x65,
	0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x49, 0x64, 0x12, 0x22, 0x0a, 0x0c, 0x6d, 0x65, 0x64, 0x69,
	0x63, 0x69, 0x6e, 0x65, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0c,
	0x6d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x12, 0x0a, 0x04,
	0x64, 0x6f, 0x73, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x02, 0x52, 0x04, 0x64, 0x6f, 0x73, 0x65,
	0x12, 0x14, 0x0a, 0x05, 0x70, 0x72, 0x69, 0x63, 0x65, 0x18, 0x05, 0x20, 0x01, 0x28, 0x02, 0x52,
	0x05, 0x70, 0x72, 0x69, 0x63, 0x65, 0x22, 0x50, 0x0a, 0x13, 0x50, 0x72, 0x65, 0x73, 0x63, 0x72,
	0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x39, 0x0a,
	0x0c, 0x6d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x18, 0x01, 0x20,
	0x03, 0x28, 0x0b, 0x32, 0x15, 0x2e, 0x50, 0x72, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69,
	0x6f, 0x6e, 0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x52, 0x0c, 0x6d, 0x65, 0x64, 0x69,
	0x63, 0x69, 0x6e, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x22, 0xbf, 0x01, 0x0a, 0x14, 0x50, 0x72, 0x65,
	0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73,
	0x65, 0x12, 0x26, 0x0a, 0x0e, 0x50, 0x72, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f,
	0x6e, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0e, 0x50, 0x72, 0x65, 0x73, 0x63,
	0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x49, 0x64, 0x12, 0x24, 0x0a, 0x0d, 0x6d, 0x65, 0x64,
	0x69, 0x63, 0x69, 0x6e, 0x65, 0x54, 0x6f, 0x74, 0x61, 0x6c, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05,
	0x52, 0x0d, 0x6d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x54, 0x6f, 0x74, 0x61, 0x6c, 0x12,
	0x1e, 0x0a, 0x0a, 0x74, 0x6f, 0x74, 0x61, 0x6c, 0x50, 0x72, 0x69, 0x63, 0x65, 0x18, 0x03, 0x20,
	0x01, 0x28, 0x05, 0x52, 0x0a, 0x74, 0x6f, 0x74, 0x61, 0x6c, 0x50, 0x72, 0x69, 0x63, 0x65, 0x12,
	0x39, 0x0a, 0x0c, 0x6d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x18,
	0x04, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x15, 0x2e, 0x50, 0x72, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70,
	0x74, 0x69, 0x6f, 0x6e, 0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x52, 0x0c, 0x6d, 0x65,
	0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x32, 0x90, 0x01, 0x0a, 0x08, 0x4d,
	0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x12, 0x41, 0x0a, 0x0e, 0x73, 0x65, 0x61, 0x72, 0x63,
	0x68, 0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x12, 0x16, 0x2e, 0x4d, 0x65, 0x64, 0x69,
	0x63, 0x69, 0x6e, 0x65, 0x53, 0x65, 0x61, 0x72, 0x63, 0x68, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x1a, 0x17, 0x2e, 0x4d, 0x65, 0x64, 0x69, 0x63, 0x69, 0x6e, 0x65, 0x53, 0x65, 0x61, 0x72,
	0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x41, 0x0a, 0x12, 0x73, 0x75,
	0x62, 0x6d, 0x69, 0x74, 0x50, 0x72, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e,
	0x12, 0x14, 0x2e, 0x50, 0x72, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x52,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x15, 0x2e, 0x50, 0x72, 0x65, 0x73, 0x63, 0x72, 0x69,
	0x70, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x42, 0x0a, 0x5a,
	0x08, 0x2e, 0x2f, 0x3b, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x33,
}

var (
	file_medicine_proto_rawDescOnce sync.Once
	file_medicine_proto_rawDescData = file_medicine_proto_rawDesc
)

func file_medicine_proto_rawDescGZIP() []byte {
	file_medicine_proto_rawDescOnce.Do(func() {
		file_medicine_proto_rawDescData = protoimpl.X.CompressGZIP(file_medicine_proto_rawDescData)
	})
	return file_medicine_proto_rawDescData
}

var file_medicine_proto_msgTypes = make([]protoimpl.MessageInfo, 6)
var file_medicine_proto_goTypes = []interface{}{
	(*MedicineSearchRequest)(nil),  // 0: MedicineSearchRequest
	(*MedicineInfo)(nil),           // 1: MedicineInfo
	(*MedicineSearchResponse)(nil), // 2: MedicineSearchResponse
	(*PrescriptionMedicine)(nil),   // 3: PrescriptionMedicine
	(*PrescriptionRequest)(nil),    // 4: PrescriptionRequest
	(*PrescriptionResponse)(nil),   // 5: PrescriptionResponse
}
var file_medicine_proto_depIdxs = []int32{
	1, // 0: MedicineSearchResponse.medicineList:type_name -> MedicineInfo
	3, // 1: PrescriptionRequest.medicineList:type_name -> PrescriptionMedicine
	3, // 2: PrescriptionResponse.medicineList:type_name -> PrescriptionMedicine
	0, // 3: Medicine.searchMedicine:input_type -> MedicineSearchRequest
	4, // 4: Medicine.submitPrescription:input_type -> PrescriptionRequest
	2, // 5: Medicine.searchMedicine:output_type -> MedicineSearchResponse
	5, // 6: Medicine.submitPrescription:output_type -> PrescriptionResponse
	5, // [5:7] is the sub-list for method output_type
	3, // [3:5] is the sub-list for method input_type
	3, // [3:3] is the sub-list for extension type_name
	3, // [3:3] is the sub-list for extension extendee
	0, // [0:3] is the sub-list for field type_name
}

func init() { file_medicine_proto_init() }
func file_medicine_proto_init() {
	if File_medicine_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_medicine_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*MedicineSearchRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_medicine_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*MedicineInfo); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_medicine_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*MedicineSearchResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_medicine_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PrescriptionMedicine); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_medicine_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PrescriptionRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_medicine_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PrescriptionResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_medicine_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   6,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_medicine_proto_goTypes,
		DependencyIndexes: file_medicine_proto_depIdxs,
		MessageInfos:      file_medicine_proto_msgTypes,
	}.Build()
	File_medicine_proto = out.File
	file_medicine_proto_rawDesc = nil
	file_medicine_proto_goTypes = nil
	file_medicine_proto_depIdxs = nil
}
