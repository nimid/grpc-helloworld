# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: helloworld.proto

require 'google/protobuf'

require 'google/protobuf/empty_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("helloworld.proto", :syntax => :proto3) do
    add_message "com.example.Response" do
      optional :message, :string, 1
    end
  end
end

module Com
  module Example
    Response = Google::Protobuf::DescriptorPool.generated_pool.lookup("com.example.Response").msgclass
  end
end
