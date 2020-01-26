class Application
  @@items = []
  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if response.path.match(/items\/\w*/)
      respponse.write
    end
    response.finish
  end
end
