# CreditDevice

* That gem is not ready yet, is missing reports and few stuffs


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'credit_device'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install credit_device

## Usage

### config file
```
      CreditDevice.configure do |config|
        config.url = "url"
        config.username = "username"
        config.password = "password"
      end
```
### check status
```
# check the status after setup your configuration CreaditDevice 
CreditDevice::Status.check_status

```

### get all companies by term

```
@company = CreditDevice::Company.new("ABN", "NL",1)
@company.get_all
```

### get all companies with filter by type:
* ex: by reg_number
* check all list of parameter here: https://inquiry.creditandcollection.nl/docs/company.html
* parameters for Comapny.new is : ```def initialize(term, country, page = 1, **parameter)```

```
@company = CreditDevice::Company.new("97123456", "NL",1, type: CreditDevice::Type::QueryParameterType::REG_NUMBER)
@company.get_all
```



### Get Inquiry from the company:

ex: using  Inquiry above:
```
# D44CI701 => type -> all types on  https://inquiry.creditandcollection.nl/docs/inquiry.html
# l7Ox1kNbDBaL3ljSsWZi+A== => company_id
# NL = country language
@inquery = CreditDevice::Inquiry.new("D44CI701", "l7Ox1kNbDBaL3ljSs12asd==", "NL")
```

### GET Report from path or company_id 

````
CreditDevice::Report.new("inquiries/150987/").request_report 
or
CreditDevice::Report.new(nil, inquiry_id: 150987).request_report
````
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rodrigobarreto/credit_device. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CreditDevice project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rodrigobarreto/credit_device/blob/master/CODE_OF_CONDUCT.md).


## rubygems page
The gem is available in [Credit Device](https://rubygems.org/gems/credit_device).