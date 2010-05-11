# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ffi-pcap}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Postmodern", "Dakrone", "Eric Monti"]
  s.date = %q{2010-05-11}
  s.description = %q{Bindings to libpcap via FFI interface in Ruby.}
  s.email = %q{postmodern.mod3@gmail.com}
  s.extra_rdoc_files = [
    "ChangeLog.md",
     "LICENSE.txt",
     "README.md"
  ]
  s.files = [
    ".gitignore",
     ".specopts",
     ".yardopts",
     "ChangeLog.md",
     "LICENSE.txt",
     "README.md",
     "Rakefile",
     "VERSION",
     "examples/ipfw_divert.rb",
     "examples/print_bytes.rb",
     "ffi-pcap.gemspec",
     "lib/ffi-pcap.rb",
     "lib/ffi/pcap.rb",
     "lib/ffi/pcap/addr.rb",
     "lib/ffi/pcap/bpf.rb",
     "lib/ffi/pcap/bpf/instruction.rb",
     "lib/ffi/pcap/bpf/program.rb",
     "lib/ffi/pcap/bsd.rb",
     "lib/ffi/pcap/capture_wrapper.rb",
     "lib/ffi/pcap/common_wrapper.rb",
     "lib/ffi/pcap/copy_handler.rb",
     "lib/ffi/pcap/crt.rb",
     "lib/ffi/pcap/data_link.rb",
     "lib/ffi/pcap/dead.rb",
     "lib/ffi/pcap/dumper.rb",
     "lib/ffi/pcap/error_buffer.rb",
     "lib/ffi/pcap/exceptions.rb",
     "lib/ffi/pcap/file_header.rb",
     "lib/ffi/pcap/in_addr.rb",
     "lib/ffi/pcap/interface.rb",
     "lib/ffi/pcap/live.rb",
     "lib/ffi/pcap/offline.rb",
     "lib/ffi/pcap/packet.rb",
     "lib/ffi/pcap/packet_header.rb",
     "lib/ffi/pcap/pcap.rb",
     "lib/ffi/pcap/stat.rb",
     "lib/ffi/pcap/time_val.rb",
     "lib/ffi/pcap/typedefs.rb",
     "spec/data_link_spec.rb",
     "spec/dead_spec.rb",
     "spec/dumps/http.pcap",
     "spec/dumps/simple_tcp.pcap",
     "spec/error_buffer_spec.rb",
     "spec/file_header_spec.rb",
     "spec/live_spec.rb",
     "spec/offline_spec.rb",
     "spec/packet_behaviors.rb",
     "spec/packet_injection_spec.rb",
     "spec/packet_spec.rb",
     "spec/pcap_spec.rb",
     "spec/spec_helper.rb",
     "spec/wrapper_behaviors.rb"
  ]
  s.has_rdoc = %q{yard}
  s.homepage = %q{http://github.com/sophsec/ffi-pcap}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ffi-pcap}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{FFI bindings for libpcap}
  s.test_files = [
    "spec/file_header_spec.rb",
     "spec/dead_spec.rb",
     "spec/live_spec.rb",
     "spec/packet_injection_spec.rb",
     "spec/packet_behaviors.rb",
     "spec/packet_spec.rb",
     "spec/spec_helper.rb",
     "spec/offline_spec.rb",
     "spec/pcap_spec.rb",
     "spec/error_buffer_spec.rb",
     "spec/data_link_spec.rb",
     "spec/wrapper_behaviors.rb",
     "examples/ipfw_divert.rb",
     "examples/print_bytes.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, [">= 0.5.0"])
      s.add_runtime_dependency(%q<ffi_dry>, [">= 0.1.9"])
    else
      s.add_dependency(%q<ffi>, [">= 0.5.0"])
      s.add_dependency(%q<ffi_dry>, [">= 0.1.9"])
    end
  else
    s.add_dependency(%q<ffi>, [">= 0.5.0"])
    s.add_dependency(%q<ffi_dry>, [">= 0.1.9"])
  end
end

