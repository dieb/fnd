require 'rack'

require_relative('code')
require_relative('api')
require_relative('admin_api')

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