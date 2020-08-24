class Application

    def call(env)
        resp = Rack::Response.new

        hour = Time.now.hour

        if hour > 11 
            resp.write afternoon 
        else
            resp.write morning
        end

        resp.finish
    end

    def morning
        "Good Morning!"
    end

    def afternoon
        "Good Afternoon!"
    end


end