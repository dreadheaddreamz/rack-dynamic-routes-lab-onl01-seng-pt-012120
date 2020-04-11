class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end
  
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
  
end
