class Application
    def call(env)
     resp = Rack::Response.new
     t = Time.now
        if t.hour < 12
            resp.write "Good Morning!"
        else t.hour > 12
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end