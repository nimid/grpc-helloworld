require 'grpc'
require_relative 'service'

server = GRPC::RpcServer.new
server.add_http2_port('localhost:50051', :this_port_is_insecure)
server.handle(Service)
server.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
