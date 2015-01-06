module GoTrek
  class Client
    include HTTParty

    base_uri "https://outdoor-data-api.herokuapp.com"

    def initialize(token, user_agent)
      @header = {"User-Agent" => "#{user_agent}",
             "Authorization" => "token #{token}"}
    end

    def posts
      response = self.class.get('/some/endpoint', {
        query: { with: 'paramaters' }
        })

      return response.body
    end

    def places(trail)
      response = self.class.get("/api.json?api_key=#{ENV[TRAIL_API_KEY]}[city_cont]=#{trail}&radius=15", headers: @header)
      return response
    end
  end

end