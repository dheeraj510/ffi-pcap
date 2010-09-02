require 'rubygems'
require 'ffi/pcap'

live = FFI::PCap::Live.new(:device => 'en0')
offline = FFI::PCap::Offline.new("./foo.cap")

if live.datalink == offline.datalink
  offline.loop() {|this,pkt| live.inject(pkt) }
end
