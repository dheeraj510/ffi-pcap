#!/usr/bin/env ruby

require 'ffi/pcap'
require 'eventmachine'

class PcapWatcher < EM::Connection
  def initialize(pcap)
    @pcap = pcap
  end

  def notify_readable(*args)
    puts "Dispatch!"
    @pcap.dispatch() do |this, pkt|
      puts "#{pkt.time}:"
      puts pkt.body.bytes.to_a.map{|c|  "%0.2x" % c }.join(" ")
    end
    puts "end dispatch"
  end

end

dev = ARGV.shift || 'en1'
if ARGV[0]
  filter = ARGV.join(' ')
end

EM.run{
  pcap = FFI::PCap::Live.new(:device => dev, :timeout => 100)
  pcap.nonblocking=true
  pcap.setfilter filter if filter

  conn = EM.watch pcap.selectable_fd, PcapWatcher, pcap
  conn.notify_readable = true
}

