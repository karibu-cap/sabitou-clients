// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.5.1
// - protoc             (unknown)
// source: inventory/v1/inventory.proto

package inventoryV1

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.64.0 or later.
const _ = grpc.SupportPackageIsVersion9

const (
	InventoryService_CreateInventory_FullMethodName = "/inventory.v1.InventoryService/CreateInventory"
	InventoryService_GetInventory_FullMethodName    = "/inventory.v1.InventoryService/GetInventory"
	InventoryService_UpdateInventory_FullMethodName = "/inventory.v1.InventoryService/UpdateInventory"
	InventoryService_DeleteInventory_FullMethodName = "/inventory.v1.InventoryService/DeleteInventory"
)

// InventoryServiceClient is the client API for InventoryService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type InventoryServiceClient interface {
	CreateInventory(ctx context.Context, in *CreateInventoryRequest, opts ...grpc.CallOption) (*CreateInventoryResponse, error)
	GetInventory(ctx context.Context, in *GetInventoryRequest, opts ...grpc.CallOption) (*GetInventoryResponse, error)
	UpdateInventory(ctx context.Context, in *UpdateInventoryRequest, opts ...grpc.CallOption) (*UpdateInventoryResponse, error)
	DeleteInventory(ctx context.Context, in *DeleteInventoryRequest, opts ...grpc.CallOption) (*DeleteInventoryResponse, error)
}

type inventoryServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewInventoryServiceClient(cc grpc.ClientConnInterface) InventoryServiceClient {
	return &inventoryServiceClient{cc}
}

func (c *inventoryServiceClient) CreateInventory(ctx context.Context, in *CreateInventoryRequest, opts ...grpc.CallOption) (*CreateInventoryResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CreateInventoryResponse)
	err := c.cc.Invoke(ctx, InventoryService_CreateInventory_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *inventoryServiceClient) GetInventory(ctx context.Context, in *GetInventoryRequest, opts ...grpc.CallOption) (*GetInventoryResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetInventoryResponse)
	err := c.cc.Invoke(ctx, InventoryService_GetInventory_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *inventoryServiceClient) UpdateInventory(ctx context.Context, in *UpdateInventoryRequest, opts ...grpc.CallOption) (*UpdateInventoryResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UpdateInventoryResponse)
	err := c.cc.Invoke(ctx, InventoryService_UpdateInventory_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *inventoryServiceClient) DeleteInventory(ctx context.Context, in *DeleteInventoryRequest, opts ...grpc.CallOption) (*DeleteInventoryResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(DeleteInventoryResponse)
	err := c.cc.Invoke(ctx, InventoryService_DeleteInventory_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// InventoryServiceServer is the server API for InventoryService service.
// All implementations must embed UnimplementedInventoryServiceServer
// for forward compatibility.
type InventoryServiceServer interface {
	CreateInventory(context.Context, *CreateInventoryRequest) (*CreateInventoryResponse, error)
	GetInventory(context.Context, *GetInventoryRequest) (*GetInventoryResponse, error)
	UpdateInventory(context.Context, *UpdateInventoryRequest) (*UpdateInventoryResponse, error)
	DeleteInventory(context.Context, *DeleteInventoryRequest) (*DeleteInventoryResponse, error)
	mustEmbedUnimplementedInventoryServiceServer()
}

// UnimplementedInventoryServiceServer must be embedded to have
// forward compatible implementations.
//
// NOTE: this should be embedded by value instead of pointer to avoid a nil
// pointer dereference when methods are called.
type UnimplementedInventoryServiceServer struct{}

func (UnimplementedInventoryServiceServer) CreateInventory(context.Context, *CreateInventoryRequest) (*CreateInventoryResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateInventory not implemented")
}
func (UnimplementedInventoryServiceServer) GetInventory(context.Context, *GetInventoryRequest) (*GetInventoryResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetInventory not implemented")
}
func (UnimplementedInventoryServiceServer) UpdateInventory(context.Context, *UpdateInventoryRequest) (*UpdateInventoryResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateInventory not implemented")
}
func (UnimplementedInventoryServiceServer) DeleteInventory(context.Context, *DeleteInventoryRequest) (*DeleteInventoryResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteInventory not implemented")
}
func (UnimplementedInventoryServiceServer) mustEmbedUnimplementedInventoryServiceServer() {}
func (UnimplementedInventoryServiceServer) testEmbeddedByValue()                          {}

// UnsafeInventoryServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to InventoryServiceServer will
// result in compilation errors.
type UnsafeInventoryServiceServer interface {
	mustEmbedUnimplementedInventoryServiceServer()
}

func RegisterInventoryServiceServer(s grpc.ServiceRegistrar, srv InventoryServiceServer) {
	// If the following call pancis, it indicates UnimplementedInventoryServiceServer was
	// embedded by pointer and is nil.  This will cause panics if an
	// unimplemented method is ever invoked, so we test this at initialization
	// time to prevent it from happening at runtime later due to I/O.
	if t, ok := srv.(interface{ testEmbeddedByValue() }); ok {
		t.testEmbeddedByValue()
	}
	s.RegisterService(&InventoryService_ServiceDesc, srv)
}

func _InventoryService_CreateInventory_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateInventoryRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(InventoryServiceServer).CreateInventory(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: InventoryService_CreateInventory_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(InventoryServiceServer).CreateInventory(ctx, req.(*CreateInventoryRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _InventoryService_GetInventory_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetInventoryRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(InventoryServiceServer).GetInventory(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: InventoryService_GetInventory_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(InventoryServiceServer).GetInventory(ctx, req.(*GetInventoryRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _InventoryService_UpdateInventory_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateInventoryRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(InventoryServiceServer).UpdateInventory(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: InventoryService_UpdateInventory_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(InventoryServiceServer).UpdateInventory(ctx, req.(*UpdateInventoryRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _InventoryService_DeleteInventory_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteInventoryRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(InventoryServiceServer).DeleteInventory(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: InventoryService_DeleteInventory_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(InventoryServiceServer).DeleteInventory(ctx, req.(*DeleteInventoryRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// InventoryService_ServiceDesc is the grpc.ServiceDesc for InventoryService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var InventoryService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "inventory.v1.InventoryService",
	HandlerType: (*InventoryServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateInventory",
			Handler:    _InventoryService_CreateInventory_Handler,
		},
		{
			MethodName: "GetInventory",
			Handler:    _InventoryService_GetInventory_Handler,
		},
		{
			MethodName: "UpdateInventory",
			Handler:    _InventoryService_UpdateInventory_Handler,
		},
		{
			MethodName: "DeleteInventory",
			Handler:    _InventoryService_DeleteInventory_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "inventory/v1/inventory.proto",
}
