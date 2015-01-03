require 'ostruct'

module Fnd
  class Code
    # TODO garbage collect those
    @@codes = {}

    attr_reader :name
    attr_reader :code

    def self.find_by_name(name)
      @@codes[name]
    end

    def initialize(name, code)
      @name = name.to_s
      @code = code
      @@codes.update(@name => self)
    end

    def execute(params)
      # TODO sanitize params
      # TODO sandbox env using binding
      OpenStruct.new(params).instance_eval(@code)
    end
  end
end