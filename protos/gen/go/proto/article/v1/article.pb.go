// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.35.1
// 	protoc        (unknown)
// source: article/v1/article.proto

package articleV1

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	v1 "sabitou/proto/media/v1"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type Article struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id           string   `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name         string   `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	Description  string   `protobuf:"bytes,3,opt,name=description,proto3" json:"description,omitempty"`
	BarCodeValue string   `protobuf:"bytes,4,opt,name=bar_code_value,json=barCodeValue,proto3" json:"bar_code_value,omitempty"`
	Images       []string `protobuf:"bytes,5,rep,name=images,proto3" json:"images,omitempty"`
	CreatedAt    string   `protobuf:"bytes,6,opt,name=created_at,json=createdAt,proto3" json:"created_at,omitempty"`
	UpdatedAt    string   `protobuf:"bytes,7,opt,name=updated_at,json=updatedAt,proto3" json:"updated_at,omitempty"`
}

func (x *Article) Reset() {
	*x = Article{}
	mi := &file_article_v1_article_proto_msgTypes[0]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *Article) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Article) ProtoMessage() {}

func (x *Article) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[0]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Article.ProtoReflect.Descriptor instead.
func (*Article) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{0}
}

func (x *Article) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *Article) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Article) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *Article) GetBarCodeValue() string {
	if x != nil {
		return x.BarCodeValue
	}
	return ""
}

func (x *Article) GetImages() []string {
	if x != nil {
		return x.Images
	}
	return nil
}

func (x *Article) GetCreatedAt() string {
	if x != nil {
		return x.CreatedAt
	}
	return ""
}

func (x *Article) GetUpdatedAt() string {
	if x != nil {
		return x.UpdatedAt
	}
	return ""
}

type GetArticleRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *GetArticleRequest) Reset() {
	*x = GetArticleRequest{}
	mi := &file_article_v1_article_proto_msgTypes[1]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *GetArticleRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetArticleRequest) ProtoMessage() {}

func (x *GetArticleRequest) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[1]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetArticleRequest.ProtoReflect.Descriptor instead.
func (*GetArticleRequest) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{1}
}

func (x *GetArticleRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type GetArticleResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id           string      `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name         string      `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	Description  string      `protobuf:"bytes,3,opt,name=description,proto3" json:"description,omitempty"`
	BarCodeValue string      `protobuf:"bytes,4,opt,name=bar_code_value,json=barCodeValue,proto3" json:"bar_code_value,omitempty"`
	Images       []*v1.Media `protobuf:"bytes,5,rep,name=images,proto3" json:"images,omitempty"`
	CreatedAt    string      `protobuf:"bytes,6,opt,name=created_at,json=createdAt,proto3" json:"created_at,omitempty"`
	UpdatedAt    string      `protobuf:"bytes,7,opt,name=updated_at,json=updatedAt,proto3" json:"updated_at,omitempty"`
}

func (x *GetArticleResponse) Reset() {
	*x = GetArticleResponse{}
	mi := &file_article_v1_article_proto_msgTypes[2]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *GetArticleResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetArticleResponse) ProtoMessage() {}

func (x *GetArticleResponse) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[2]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetArticleResponse.ProtoReflect.Descriptor instead.
func (*GetArticleResponse) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{2}
}

func (x *GetArticleResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetArticleResponse) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *GetArticleResponse) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *GetArticleResponse) GetBarCodeValue() string {
	if x != nil {
		return x.BarCodeValue
	}
	return ""
}

func (x *GetArticleResponse) GetImages() []*v1.Media {
	if x != nil {
		return x.Images
	}
	return nil
}

func (x *GetArticleResponse) GetCreatedAt() string {
	if x != nil {
		return x.CreatedAt
	}
	return ""
}

func (x *GetArticleResponse) GetUpdatedAt() string {
	if x != nil {
		return x.UpdatedAt
	}
	return ""
}

type CreateArticleRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Article *Article `protobuf:"bytes,1,opt,name=article,proto3" json:"article,omitempty"`
}

func (x *CreateArticleRequest) Reset() {
	*x = CreateArticleRequest{}
	mi := &file_article_v1_article_proto_msgTypes[3]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *CreateArticleRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateArticleRequest) ProtoMessage() {}

func (x *CreateArticleRequest) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[3]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateArticleRequest.ProtoReflect.Descriptor instead.
func (*CreateArticleRequest) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{3}
}

func (x *CreateArticleRequest) GetArticle() *Article {
	if x != nil {
		return x.Article
	}
	return nil
}

type UpdateArticleRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Article *Article `protobuf:"bytes,1,opt,name=article,proto3" json:"article,omitempty"`
}

func (x *UpdateArticleRequest) Reset() {
	*x = UpdateArticleRequest{}
	mi := &file_article_v1_article_proto_msgTypes[4]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *UpdateArticleRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateArticleRequest) ProtoMessage() {}

func (x *UpdateArticleRequest) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[4]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateArticleRequest.ProtoReflect.Descriptor instead.
func (*UpdateArticleRequest) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{4}
}

func (x *UpdateArticleRequest) GetArticle() *Article {
	if x != nil {
		return x.Article
	}
	return nil
}

type DeleteArticleRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *DeleteArticleRequest) Reset() {
	*x = DeleteArticleRequest{}
	mi := &file_article_v1_article_proto_msgTypes[5]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *DeleteArticleRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteArticleRequest) ProtoMessage() {}

func (x *DeleteArticleRequest) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[5]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteArticleRequest.ProtoReflect.Descriptor instead.
func (*DeleteArticleRequest) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{5}
}

func (x *DeleteArticleRequest) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type DeleteArticleResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Success bool `protobuf:"varint,1,opt,name=success,proto3" json:"success,omitempty"`
}

func (x *DeleteArticleResponse) Reset() {
	*x = DeleteArticleResponse{}
	mi := &file_article_v1_article_proto_msgTypes[6]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *DeleteArticleResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteArticleResponse) ProtoMessage() {}

func (x *DeleteArticleResponse) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[6]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteArticleResponse.ProtoReflect.Descriptor instead.
func (*DeleteArticleResponse) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{6}
}

func (x *DeleteArticleResponse) GetSuccess() bool {
	if x != nil {
		return x.Success
	}
	return false
}

type CreateArticleResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
}

func (x *CreateArticleResponse) Reset() {
	*x = CreateArticleResponse{}
	mi := &file_article_v1_article_proto_msgTypes[7]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *CreateArticleResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateArticleResponse) ProtoMessage() {}

func (x *CreateArticleResponse) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[7]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateArticleResponse.ProtoReflect.Descriptor instead.
func (*CreateArticleResponse) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{7}
}

func (x *CreateArticleResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

type UpdateArticleResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Article *Article `protobuf:"bytes,1,opt,name=article,proto3" json:"article,omitempty"`
}

func (x *UpdateArticleResponse) Reset() {
	*x = UpdateArticleResponse{}
	mi := &file_article_v1_article_proto_msgTypes[8]
	ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
	ms.StoreMessageInfo(mi)
}

func (x *UpdateArticleResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UpdateArticleResponse) ProtoMessage() {}

func (x *UpdateArticleResponse) ProtoReflect() protoreflect.Message {
	mi := &file_article_v1_article_proto_msgTypes[8]
	if x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UpdateArticleResponse.ProtoReflect.Descriptor instead.
func (*UpdateArticleResponse) Descriptor() ([]byte, []int) {
	return file_article_v1_article_proto_rawDescGZIP(), []int{8}
}

func (x *UpdateArticleResponse) GetArticle() *Article {
	if x != nil {
		return x.Article
	}
	return nil
}

var File_article_v1_article_proto protoreflect.FileDescriptor

var file_article_v1_article_proto_rawDesc = []byte{
	0x0a, 0x18, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2f, 0x76, 0x31, 0x2f, 0x61, 0x72, 0x74,
	0x69, 0x63, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0a, 0x61, 0x72, 0x74, 0x69,
	0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31, 0x1a, 0x14, 0x6d, 0x65, 0x64, 0x69, 0x61, 0x2f, 0x76, 0x31,
	0x2f, 0x6d, 0x65, 0x64, 0x69, 0x61, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xcb, 0x01, 0x0a,
	0x07, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65,
	0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x20, 0x0a, 0x0b,
	0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x03, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x24,
	0x0a, 0x0e, 0x62, 0x61, 0x72, 0x5f, 0x63, 0x6f, 0x64, 0x65, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65,
	0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0c, 0x62, 0x61, 0x72, 0x43, 0x6f, 0x64, 0x65, 0x56,
	0x61, 0x6c, 0x75, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x69, 0x6d, 0x61, 0x67, 0x65, 0x73, 0x18, 0x05,
	0x20, 0x03, 0x28, 0x09, 0x52, 0x06, 0x69, 0x6d, 0x61, 0x67, 0x65, 0x73, 0x12, 0x1d, 0x0a, 0x0a,
	0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x61, 0x74, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x09, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74, 0x12, 0x1d, 0x0a, 0x0a, 0x75,
	0x70, 0x64, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x61, 0x74, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74, 0x22, 0x23, 0x0a, 0x11, 0x47, 0x65,
	0x74, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12,
	0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22,
	0xe7, 0x01, 0x0a, 0x12, 0x47, 0x65, 0x74, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65,
	0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x20, 0x0a, 0x0b, 0x64, 0x65,
	0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x24, 0x0a, 0x0e,
	0x62, 0x61, 0x72, 0x5f, 0x63, 0x6f, 0x64, 0x65, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x04,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x0c, 0x62, 0x61, 0x72, 0x43, 0x6f, 0x64, 0x65, 0x56, 0x61, 0x6c,
	0x75, 0x65, 0x12, 0x27, 0x0a, 0x06, 0x69, 0x6d, 0x61, 0x67, 0x65, 0x73, 0x18, 0x05, 0x20, 0x03,
	0x28, 0x0b, 0x32, 0x0f, 0x2e, 0x6d, 0x65, 0x64, 0x69, 0x61, 0x2e, 0x76, 0x31, 0x2e, 0x4d, 0x65,
	0x64, 0x69, 0x61, 0x52, 0x06, 0x69, 0x6d, 0x61, 0x67, 0x65, 0x73, 0x12, 0x1d, 0x0a, 0x0a, 0x63,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x61, 0x74, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74, 0x12, 0x1d, 0x0a, 0x0a, 0x75, 0x70,
	0x64, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x61, 0x74, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09,
	0x75, 0x70, 0x64, 0x61, 0x74, 0x65, 0x64, 0x41, 0x74, 0x22, 0x45, 0x0a, 0x14, 0x43, 0x72, 0x65,
	0x61, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x12, 0x2d, 0x0a, 0x07, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x13, 0x2e, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31, 0x2e,
	0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x07, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65,
	0x22, 0x45, 0x0a, 0x14, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c,
	0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x2d, 0x0a, 0x07, 0x61, 0x72, 0x74, 0x69,
	0x63, 0x6c, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x13, 0x2e, 0x61, 0x72, 0x74, 0x69,
	0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x07,
	0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x22, 0x26, 0x0a, 0x14, 0x44, 0x65, 0x6c, 0x65, 0x74,
	0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12,
	0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22,
	0x31, 0x0a, 0x15, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x18, 0x0a, 0x07, 0x73, 0x75, 0x63, 0x63,
	0x65, 0x73, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28, 0x08, 0x52, 0x07, 0x73, 0x75, 0x63, 0x63, 0x65,
	0x73, 0x73, 0x22, 0x27, 0x0a, 0x15, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69,
	0x63, 0x6c, 0x65, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x22, 0x46, 0x0a, 0x15, 0x55,
	0x70, 0x64, 0x61, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x12, 0x2d, 0x0a, 0x07, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x13, 0x2e, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e,
	0x76, 0x31, 0x2e, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x07, 0x61, 0x72, 0x74, 0x69,
	0x63, 0x6c, 0x65, 0x32, 0xdf, 0x02, 0x0a, 0x0e, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x53,
	0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x4b, 0x0a, 0x0a, 0x47, 0x65, 0x74, 0x41, 0x72, 0x74,
	0x69, 0x63, 0x6c, 0x65, 0x12, 0x1d, 0x2e, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76,
	0x31, 0x2e, 0x47, 0x65, 0x74, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x71, 0x75,
	0x65, 0x73, 0x74, 0x1a, 0x1e, 0x2e, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31,
	0x2e, 0x47, 0x65, 0x74, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x12, 0x54, 0x0a, 0x0d, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x41, 0x72, 0x74,
	0x69, 0x63, 0x6c, 0x65, 0x12, 0x20, 0x2e, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76,
	0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x21, 0x2e, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65,
	0x2e, 0x76, 0x31, 0x2e, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c,
	0x65, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x54, 0x0a, 0x0d, 0x55, 0x70, 0x64,
	0x61, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x12, 0x20, 0x2e, 0x61, 0x72, 0x74,
	0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65, 0x41, 0x72,
	0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x21, 0x2e, 0x61,
	0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x55, 0x70, 0x64, 0x61, 0x74, 0x65,
	0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x54, 0x0a, 0x0d, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65,
	0x12, 0x20, 0x2e, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x44, 0x65,
	0x6c, 0x65, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x1a, 0x21, 0x2e, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31, 0x2e,
	0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x52, 0x65, 0x73,
	0x70, 0x6f, 0x6e, 0x73, 0x65, 0x42, 0x8b, 0x01, 0x0a, 0x0e, 0x63, 0x6f, 0x6d, 0x2e, 0x61, 0x72,
	0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x76, 0x31, 0x42, 0x0c, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c,
	0x65, 0x50, 0x72, 0x6f, 0x74, 0x6f, 0x50, 0x01, 0x5a, 0x22, 0x73, 0x61, 0x62, 0x69, 0x74, 0x6f,
	0x75, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2f,
	0x76, 0x31, 0x3b, 0x61, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x56, 0x31, 0xa2, 0x02, 0x03, 0x41,
	0x58, 0x58, 0xaa, 0x02, 0x0a, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x2e, 0x56, 0x31, 0xca,
	0x02, 0x0a, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x5c, 0x56, 0x31, 0xe2, 0x02, 0x16, 0x41,
	0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x5c, 0x56, 0x31, 0x5c, 0x47, 0x50, 0x42, 0x4d, 0x65, 0x74,
	0x61, 0x64, 0x61, 0x74, 0x61, 0xea, 0x02, 0x0b, 0x41, 0x72, 0x74, 0x69, 0x63, 0x6c, 0x65, 0x3a,
	0x3a, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_article_v1_article_proto_rawDescOnce sync.Once
	file_article_v1_article_proto_rawDescData = file_article_v1_article_proto_rawDesc
)

func file_article_v1_article_proto_rawDescGZIP() []byte {
	file_article_v1_article_proto_rawDescOnce.Do(func() {
		file_article_v1_article_proto_rawDescData = protoimpl.X.CompressGZIP(file_article_v1_article_proto_rawDescData)
	})
	return file_article_v1_article_proto_rawDescData
}

var file_article_v1_article_proto_msgTypes = make([]protoimpl.MessageInfo, 9)
var file_article_v1_article_proto_goTypes = []any{
	(*Article)(nil),               // 0: article.v1.Article
	(*GetArticleRequest)(nil),     // 1: article.v1.GetArticleRequest
	(*GetArticleResponse)(nil),    // 2: article.v1.GetArticleResponse
	(*CreateArticleRequest)(nil),  // 3: article.v1.CreateArticleRequest
	(*UpdateArticleRequest)(nil),  // 4: article.v1.UpdateArticleRequest
	(*DeleteArticleRequest)(nil),  // 5: article.v1.DeleteArticleRequest
	(*DeleteArticleResponse)(nil), // 6: article.v1.DeleteArticleResponse
	(*CreateArticleResponse)(nil), // 7: article.v1.CreateArticleResponse
	(*UpdateArticleResponse)(nil), // 8: article.v1.UpdateArticleResponse
	(*v1.Media)(nil),              // 9: media.v1.Media
}
var file_article_v1_article_proto_depIdxs = []int32{
	9, // 0: article.v1.GetArticleResponse.images:type_name -> media.v1.Media
	0, // 1: article.v1.CreateArticleRequest.article:type_name -> article.v1.Article
	0, // 2: article.v1.UpdateArticleRequest.article:type_name -> article.v1.Article
	0, // 3: article.v1.UpdateArticleResponse.article:type_name -> article.v1.Article
	1, // 4: article.v1.ArticleService.GetArticle:input_type -> article.v1.GetArticleRequest
	3, // 5: article.v1.ArticleService.CreateArticle:input_type -> article.v1.CreateArticleRequest
	4, // 6: article.v1.ArticleService.UpdateArticle:input_type -> article.v1.UpdateArticleRequest
	5, // 7: article.v1.ArticleService.DeleteArticle:input_type -> article.v1.DeleteArticleRequest
	2, // 8: article.v1.ArticleService.GetArticle:output_type -> article.v1.GetArticleResponse
	7, // 9: article.v1.ArticleService.CreateArticle:output_type -> article.v1.CreateArticleResponse
	8, // 10: article.v1.ArticleService.UpdateArticle:output_type -> article.v1.UpdateArticleResponse
	6, // 11: article.v1.ArticleService.DeleteArticle:output_type -> article.v1.DeleteArticleResponse
	8, // [8:12] is the sub-list for method output_type
	4, // [4:8] is the sub-list for method input_type
	4, // [4:4] is the sub-list for extension type_name
	4, // [4:4] is the sub-list for extension extendee
	0, // [0:4] is the sub-list for field type_name
}

func init() { file_article_v1_article_proto_init() }
func file_article_v1_article_proto_init() {
	if File_article_v1_article_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_article_v1_article_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   9,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_article_v1_article_proto_goTypes,
		DependencyIndexes: file_article_v1_article_proto_depIdxs,
		MessageInfos:      file_article_v1_article_proto_msgTypes,
	}.Build()
	File_article_v1_article_proto = out.File
	file_article_v1_article_proto_rawDesc = nil
	file_article_v1_article_proto_goTypes = nil
	file_article_v1_article_proto_depIdxs = nil
}
