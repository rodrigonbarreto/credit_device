module CreditDevice
  class Status
    def self.check_status
      CreditDevice::Client.new(:get, 'status').request['ok']
    rescue RestClient::ExceptionWithResponse => _e
      puts _e
      false
    end
  end
end
