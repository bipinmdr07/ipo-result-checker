require 'httparty'

class CompanySharesController < ApplicationController
  def index
    url = ENV['CDSC_BASE_URL'] + '/result/companyShares/fileUploaded'
    response = HTTParty.get(url)

    render json: response
  end
end
