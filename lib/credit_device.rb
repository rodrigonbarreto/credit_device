require "rest-client"
require "json"
require "credit_device/type/query_parameter_type"
require "credit_device/version"
require "credit_device/base"
require "credit_device/client"
require "credit_device/configuration"
require "credit_device/status"
require "credit_device/company"
require "credit_device/base"


module CreditDevice
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
