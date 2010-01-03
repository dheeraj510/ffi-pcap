begin
  require 'rubygems'
rescue LoadError
end

require 'ffi/dry'
require 'ffi/packets'

require 'pcap-ffi/ffi'
require 'pcap-ffi/if'
require 'pcap-ffi/addr'
require 'pcap-ffi/file_header'
require 'pcap-ffi/packet_header'
require 'pcap-ffi/stat'
require 'pcap-ffi/data_link'
require 'pcap-ffi/handler'
require 'pcap-ffi/version'
require 'pcap-ffi/pcap'
