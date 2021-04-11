class CdscApi
  include HTTParty

  headers 'Content-Type' => 'application/json'
  base_uri ENV['CDSC_BASE_URL']

  def get_company_shares
    self.class.get('/result/companyShares/fileUploaded').parsed_response
  end

  def get_ipo_result(boid, companyShareId)
    params = { body: { boid: boid, companyShareId: companyShareId }}
    self.class.post('/result/result/check', params).parsed_response
  end
end
