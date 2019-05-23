require 'grpc'
require_relative 'helloworld_pb'

class Service
  include GRPC::GenericService

  self.service_name = 'com.example.HelloWorld'
  self.marshal_class_method = :encode
  self.unmarshal_class_method = :decode

  rpc :SayHelloWorld, Google::Protobuf::Empty, Com::Example::Response

  def say_hello_world(request, _unused_call)
    Com::Example::Response.new(message: "Hello, Ruby World!")
  end
end

Stub = Service.rpc_stub_class
