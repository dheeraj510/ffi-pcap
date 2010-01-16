begin; require 'rubygems'; rescue LoadError; end

require 'ffi_dry'

module FFI
  module PCap
    extend FFI::Library

    begin
      ffi_lib "wpcap"
    rescue LoadError
      ffi_lib "pcap"
    end
  end
end

require 'pcap-ffi/libc'

require 'pcap-ffi/version'
require 'pcap-ffi/exceptions'

# FFI typedefs, pointer wrappers, and struct
require 'pcap-ffi/typedefs'
require 'pcap-ffi/bsd'
require 'pcap-ffi/addr'
require 'pcap-ffi/interface'
require 'pcap-ffi/file_header'
require 'pcap-ffi/time_val'
require 'pcap-ffi/packet_header'
require 'pcap-ffi/stat'
require 'pcap-ffi/bpf'
require 'pcap-ffi/dumper'

# Ruby FFI function bindings, sugar, and misc wrappers
require 'pcap-ffi/error_buffer'
require 'pcap-ffi/pcap'
require 'pcap-ffi/data_link'
require 'pcap-ffi/packet'
require 'pcap-ffi/live'
require 'pcap-ffi/offline'
require 'pcap-ffi/dead'

