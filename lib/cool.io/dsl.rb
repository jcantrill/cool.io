#--
# Copyright (C)2010 Tony Arcieri
# You can redistribute this under the terms of the Ruby license
# See file LICENSE for details
#++

module Coolio
  # A DSL for defining Cool.io connection types and servers
  module DSL
    # Define all methods on the metaclass
    module_function
    
    # Run the default Cool.io event loop
    def run
      Cool.io::Loop.default.run
    end
    
    # Attach something to the default Cool.io event loop
    def attach(watcher)
      unless watcher.respond_to? :attach
        raise ArgumentError, "#{watcher.inspect} cannot be attached to the event loop"
      end
      
      watcher.attach Cool.io::Loop.default
    end
    
    # Create a new Cool.io::TCPServer
    def server(host, port, connection_name)
      class_name = connection_name.to_s.split('_').map { |s| s.capitalize }.join
      
      begin
        klass = Coolio.const_get class_name
      rescue NameError
        raise NameError, "No connection type registered for #{connection_name.inspect}"
      end
      
      Cool.io::TCPServer.new host, port, klass
    end
    
    # Create a new Cool.io::TCPSocket class
    def connection(name, &block)
      # Camelize class name
      class_name = name.to_s.split('_').map { |s| s.capitalize }.join
      
      connection = Class.new Cool.io::TCPSocket
      connection_builder = ConnectionBuilder.new connection
      connection_builder.instance_eval &block
      
      Coolio.const_set class_name, connection
    end
    
    # Builder for Cool.io::TCPSocket classes
    class ConnectionBuilder
      def initialize(klass)
        @klass = klass
      end
      
      def initializer(&action)
        @klass.send :define_method, :initialize, &action
      end
      
      def on_connect(&action)
        @klass.send :define_method, :on_connect, &action
      end
      
      def on_close(&action)
        @klass.send :define_method, :on_close, &action
      end
      
      def on_read(&action)
        @klass.send :define_method, :on_read, &action
      end
    end
  end
end

module Cool
  module IOThunk
    def self.io; Coolio::DSL; end
  end
end

module Cool
  module Coolness
    def cool; Cool::IOThunk; end
  end
end

extend Cool::Coolness