module CreditDevice
  class Client
    def initialize(type, path, params = {})
      @path = path
      @type = type
      @params = params
    end

    def request
      full_url = url + @path
      send("#{@type}_request", full_url, @params)
    end

    private

    def post_request(full_url, params = {})
      response = RestClient.post(full_url, params, Authorization: "Basic #{Base64.encode64("#{username}:#{password}")}", content_type: :json, accept: :json)
      JSON.parse(response.body)
    end

    def get_request(full_url, _params = {})
      response = RestClient::Request.execute method: :get, url: full_url, user: username, password: password
      JSON.parse(response.body)
    end

    def url
      CreditDevice.configuration.url
    end

    def username
      CreditDevice.configuration.username
    end

    def password
      CreditDevice.configuration.password
    end
  end
end
