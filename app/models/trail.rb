module GoTrek
  class Client
    include HTTParty

    # base_uri "https://trailapi-trailapi.p.mashape.com"

    # def initialize(token, user_agent)
    #   @header = {"Authorization" => "token 60016564825ec6f2f5e17a8d1d043fc8"}
    # end

    # def posts
    #   response = self.class.get('/some/endpoint', {
    #     query: { with: 'paramaters' }
    #     })

    #   return response.body
    # end

    base_uri "https://trailapi-trailapi.p.mashape.com"

    def initialize(token)
      @header = {"Authorization" => "token #{token}"}
    end

    def posts
      response = self.class.get('/some/endpoint', {
        query: { with: 'paramaters' }
        })

      return response.body
    end

    def places(trail)
      response = self.class.get("/?q[city_cont]=#{trail}", @header)
      return response
    end



  end

end