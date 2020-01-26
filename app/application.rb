gem 'pry'
require 'pry'
class Application
  @@items = ["Figs"]
  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/)
      response.status = 200
      binding.pry
      item = Item.all.find{ |i| i.name == req.params['item']}

      if @@items.include?(item)

        item.price
      else
        response.write "Item not found"
        response.status = 400
      end

    else
      response.write 'Route not found'
      response.status = 404
    end

    response.finish
  end
end
