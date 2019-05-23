package main

import (
	"context"
	"log"
	"net"

	"com_example"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc"
)

type server struct{}

func (s *server) SayHelloWorld(ctx context.Context, in *empty.Empty) (*com_example.Response, error) {
	return &com_example.Response{Message: "Hello, GoLang World!"}, nil
}

func main() {
	listener, err := net.Listen("tcp", ":50051")

	if err != nil {
		log.Fatalf("%v", err)
	}

	grpcServer := grpc.NewServer()
	com_example.RegisterHelloWorldServer(grpcServer, &server{})

	if err := grpcServer.Serve(listener); err != nil {
		log.Fatalf("%v", err)
	}
}
