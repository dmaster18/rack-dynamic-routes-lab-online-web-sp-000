class Application

  @@item = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_title = req.path.split("/items/").last
      item = 
      if @@item.include?(item)
        resp.write "#{item.price}"
      else 
        resp.status = 400
        resp.write "Item not found"
      end
    else 
      resp.write "Route not found"
      resp.status = 404
    end
    
    resp.finish
  end


  
end
