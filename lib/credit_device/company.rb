module CreditDevice
  class Company
    attr_reader :term, :country, :page

    def initialize(term, country, page = 1, **parameter)
      @term = term
      @country = country
      @page = page
      @type = parameter[:type] ? set_type(parameter[:type]) : CreditDevice::Type::QueryParameterType::DEFAULT
    end

    def get_all
      CreditDevice::Client.new(:get, path).request
    end

    def path
      "companies?#{@type}=#{@term}&country=#{@country}&page=#{@page}"
    end

    def set_type(type)
      raise "type invalid, parameters are: #{CreditDevice::Type::QueryParameterType::QUERY_TYPES.join(',')}" unless CreditDevice::Type::QueryParameterType::QUERY_TYPES.include? type
      type
    end
  end
end
