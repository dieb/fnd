require 'grape'

require File.join(File.dirname(__FILE__), 'code')

module Fnd
  class API < Grape::API
    format :json

    helpers do
      def not_found!
        error!('404 Not Found', 404)
      end
    end

    post ':function_name' do
      code = Code.find_by_name(params[:function_name])
      not_found! unless code
      code.execute(params)
    end
  end
end
