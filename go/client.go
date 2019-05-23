package main

import (
	"context"
	"log"
	"time"

	"com_example"
	"github.com/golang/protobuf/ptypes/empty"
	"google.golang.org/grpc"
)

func main() {
	connection, err := grpc.Dial("localhost:50051", grpc.WithInsecure())

	if err != nil {
		log.Fatalf("%v", err)
	}

	client := com_example.NewHelloWorldClient(connection)
	ctx, _ := context.WithTimeout(context.Background(), time.Minute)
	response, err := client.SayHelloWorld(ctx, &(empty.Empty{}))

	if err != nil {
		log.Fatalf("%v", err)
	}

	println(response.Message)
}
