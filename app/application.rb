#require 'time'
class Application

    def call(env)
      resp = Rack::Response.new
      time = Time.now
    #   resp.write "the current time is \n"
    #   resp.write "#{time.hour} \n"
      puts "################### the time is #{time.hour}############################"
      if time.hour < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
   
      resp.finish
    end
  
  end
  