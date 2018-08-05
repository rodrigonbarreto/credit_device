module CreditDevice
  class Base
    def self.config(url, username, password)
      CreditDevice.configure do |config|
        config.url = url
        config.username = username
        config.password = password
      end
    end
  end
end