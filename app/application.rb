class Application
 
  def call(env)
    resp = Rack::Response.new
    if Time.now = 12
    resp.write "Good Morning"
    #resp.write "Good Afternoon"
    resp.finish
  end
 
end


def call(env)
    resp = Rack::Response.new

    if Time.now.hour.between?(0, 11)
      resp.write "Good Morning!"
    elsif Time.now.hour.between?(12, 17)
      resp.write "Good Afternoon."
    else
      resp.write "Good Evening!"
    end

    resp.finish
  end
end