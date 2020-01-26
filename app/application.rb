class Application
  @@items = []
  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items\/\w*/)
      response.status = 200
      item = Item.find{ |i| i.name == req.params['item']}
      if @@items.include?(item)
        item.price
      else
        response.write "Item not found"
      end
    else
      response.write 'Route not found'
      response.status = 404
    end

    response.finish
  end
end
