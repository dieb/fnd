require 'rack'

require File.join(File.dirname(__FILE__), 'code')
require File.join(File.dirname(__FILE__), 'api')
require File.join(File.dirname(__FILE__), 'admin_api')

module Fnd
  class Daemon
    def initialize
      Code.new(:say_hello, '"Hello #{name}"')
    end

    def run
      Rack::Handler::WEBrick.run(
        Rack::Cascade.new([Fnd::AdminAPI, Fnd::API])
      )
    end
  end
end