class Application
  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if response.path.match(/item/)
    end
  end
end
