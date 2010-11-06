# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cool.io}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Arcieri"]
  s.date = %q{2010-11-06}
  s.description = %q{A Ruby wrapper around the libev high performance event library}
  s.email = %q{tony@medioh.com}
  s.extensions = ["ext/cool.io/extconf.rb", "ext/http11_client/extconf.rb"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "CHANGES",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "examples/echo_client.rb",
     "examples/echo_server.rb",
     "examples/google.rb",
     "examples/httpclient.rb",
     "ext/cool.io/.gitignore",
     "ext/cool.io/cool.io.h",
     "ext/cool.io/cool.io_ext.c",
     "ext/cool.io/ev_wrap.h",
     "ext/cool.io/extconf.rb",
     "ext/cool.io/iowatcher.c",
     "ext/cool.io/libev.c",
     "ext/cool.io/loop.c",
     "ext/cool.io/stat_watcher.c",
     "ext/cool.io/timer_watcher.c",
     "ext/cool.io/utils.c",
     "ext/cool.io/watcher.c",
     "ext/cool.io/watcher.h",
     "ext/http11_client/.gitignore",
     "ext/http11_client/ext_help.h",
     "ext/http11_client/extconf.rb",
     "ext/http11_client/http11_client.c",
     "ext/http11_client/http11_parser.c",
     "ext/http11_client/http11_parser.h",
     "ext/http11_client/http11_parser.rl",
     "ext/libev/Changes",
     "ext/libev/LICENSE",
     "ext/libev/README",
     "ext/libev/README.embed",
     "ext/libev/ev.c",
     "ext/libev/ev.h",
     "ext/libev/ev_epoll.c",
     "ext/libev/ev_kqueue.c",
     "ext/libev/ev_poll.c",
     "ext/libev/ev_port.c",
     "ext/libev/ev_select.c",
     "ext/libev/ev_vars.h",
     "ext/libev/ev_win32.c",
     "ext/libev/ev_wrap.h",
     "ext/libev/test_libev_win32.c",
     "ext/libev/update_ev_wrap",
     "lib/.gitignore",
     "lib/cool.io.rb",
     "lib/cool.io/async_watcher.rb",
     "lib/cool.io/dns_resolver.rb",
     "lib/cool.io/eventmachine.rb",
     "lib/cool.io/http_client.rb",
     "lib/cool.io/io.rb",
     "lib/cool.io/iowatcher.rb",
     "lib/cool.io/listener.rb",
     "lib/cool.io/loop.rb",
     "lib/cool.io/meta.rb",
     "lib/cool.io/server.rb",
     "lib/cool.io/socket.rb",
     "lib/cool.io/timer_watcher.rb",
     "lib/coolio.rb",
     "lib/rev.rb",
     "spec/async_watcher_spec.rb",
     "spec/possible_tests/schedules_other_threads.rb",
     "spec/possible_tests/test_on_resolve_failed.rb",
     "spec/possible_tests/test_resolves.rb",
     "spec/possible_tests/test_write_during_resolve.rb",
     "spec/possible_tests/works_straight.rb",
     "spec/spec_helper.rb",
     "spec/timer_watcher_spec.rb",
     "spec/unix_listener_spec.rb",
     "spec/unix_server_spec.rb"
  ]
  s.homepage = %q{http://github.com/tarcieri/cool.io}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{The cool event framework for Ruby}
  s.test_files = [
    "spec/async_watcher_spec.rb",
     "spec/spec_helper.rb",
     "spec/timer_watcher_spec.rb",
     "spec/unix_listener_spec.rb",
     "spec/unix_server_spec.rb",
     "spec/possible_tests/schedules_other_threads.rb",
     "spec/possible_tests/test_on_resolve_failed.rb",
     "spec/possible_tests/test_resolves.rb",
     "spec/possible_tests/test_write_during_resolve.rb",
     "spec/possible_tests/works_straight.rb",
     "examples/echo_client.rb",
     "examples/echo_server.rb",
     "examples/google.rb",
     "examples/httpclient.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<iobuffer>, [">= 0.1.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0.0"])
    else
      s.add_dependency(%q<iobuffer>, [">= 0.1.3"])
      s.add_dependency(%q<rspec>, ["~> 2.0.0"])
    end
  else
    s.add_dependency(%q<iobuffer>, [">= 0.1.3"])
    s.add_dependency(%q<rspec>, ["~> 2.0.0"])
  end
end

