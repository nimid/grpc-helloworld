<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: helloworld.proto

namespace GPBMetadata;

class Helloworld
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Google\Protobuf\GPBEmpty::initOnce();
        $pool->internalAddGeneratedFile(hex2bin(
            "0a92010a1068656c6c6f776f726c642e70726f746f120b636f6d2e657861" .
            "6d706c65221b0a08526573706f6e7365120f0a076d657373616765180120" .
            "012809324c0a0a48656c6c6f576f726c64123e0a0d53617948656c6c6f57" .
            "6f726c6412162e676f6f676c652e70726f746f6275662e456d7074791a15" .
            "2e636f6d2e6578616d706c652e526573706f6e7365620670726f746f33"
        ), true);

        static::$is_initialized = true;
    }
}

