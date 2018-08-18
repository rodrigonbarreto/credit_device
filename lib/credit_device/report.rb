# https://inquiry.creditandcollection.nl/docs/report.html

module CreditDevice
  class Report
    attr_reader :path, :inquiry_id

    def initialize(path, **_parameter)
      @path = path
      @inquiry_id = _parameter[:inquiry_id]
    end

    def request_report
      @path = report_by_inquiry_id if @inquiry_id
      CreditDevice::Client.new(:get, @path).request
    end

    def report_by_inquiry_id
      "inquiries/#{@inquiry_id}/report"
    end
  end
end
