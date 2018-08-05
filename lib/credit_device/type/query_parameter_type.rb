# types are from https://inquiry.creditandcollection.nl/docs/company.html

module CreditDevice
  module Type
    module QueryParameterType
      QUERY_TYPES = [
        DEFAULT = 'term'.freeze,
        REG_NUMBER = 'reg_number'.freeze,
        NAME = 'name'.freeze,
        CITY = 'city'.freeze,
        COUNTRY	= 'country'.freeze,
        ZIP_CODE = 'zipcode'.freeze,
        ADDRESS_STREET = 'address_street'.freeze,
        ADDRESS_NUMBER = 'address_number'.freeze
      ].freeze
    end
  end
end
