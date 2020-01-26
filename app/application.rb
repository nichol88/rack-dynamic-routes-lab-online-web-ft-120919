class Application
  @@items = []
  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items\/\w*/)
      item = Item.find{ |i| i.name == req.params['item']}
      if @@items.include?(item)
      else
      end
    end

    response.finish
  end
end
