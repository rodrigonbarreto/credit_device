# https://inquiry.creditandcollection.nl/docs/inquiry.html

module CreditDevice
  class Inquiry
    attr_reader :product_type, :company_id, :language

    def initialize(product_type = CreditDevice::Type::ProductType::D44CI701, company_id = nil, language = "NL", **_parameter)
      @product_type = set_type(product_type)
      @company_id = company_id
      @language = language
    end

    def request_inquiry
      params = { company_id: @company_id, product: @product_type, language: @language }.to_json
      CreditDevice::Client.new(:post, path, params).request
    end

    def path
      "inquiries"
    end

    def set_type(type)
      raise "type invalid, parameters are: #{CreditDevice::Type::ProductType::TYPES.join(',')}" unless CreditDevice::Type::ProductType::TYPES.include? type
      type
    end
  end
end
