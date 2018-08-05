module CreditDevice
  class Configuration
    attr_accessor :url, :username, :password
    def initialize
      @url = nil
      @username = nil
      @password = nil
    end
  end
end
