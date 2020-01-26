class Application
  @@items = []
  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items\/\w*/)
      item =
      if @@items.include?()
    end

    response.finish
  end
end
