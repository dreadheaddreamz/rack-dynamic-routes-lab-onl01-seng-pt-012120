class Application
  
  @@items = []
  
    def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/items/#{name}"
      resp.write "Here is the #{price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end