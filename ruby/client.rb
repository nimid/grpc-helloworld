require 'grpc'
require_relative 'service'

stub = Stub.new('localhost:50051', :this_channel_is_insecure)
message = stub.say_hello_world(Google::Protobuf::Empty.new).message

puts message
