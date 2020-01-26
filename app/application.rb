class Application
  @@items = []
  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if response.path.match(/items\/\w*/)
      if @@items.include?(request.params['item'])      
    end

    response.finish
  end
end
