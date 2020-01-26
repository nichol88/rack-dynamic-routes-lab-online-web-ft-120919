class Application
  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)
  end
end
