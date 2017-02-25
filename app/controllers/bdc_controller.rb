class BdcController < ApplicationController
  def bdcrate
    require 'openssl'
    doc = Nokogiri::HTML(open('https://www.abokifx.com/bdc_rate', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))

    entries = doc.css('.lagos-market-rates')
    rate = entries.css('table')[0].css('tr')[1].css('td')[1].text
    @formattedrate = rate[6..8]
    render template: 'bdc/home'
  end
end