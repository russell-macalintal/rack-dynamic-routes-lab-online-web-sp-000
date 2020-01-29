require_relative 'item.rb'
require 'pry'

class Application
  @@items = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      binding.pry
    else
      resp.status = 404
      resp.write "Route not found\n"
    end

    resp.finish
  end
end
