class IpoResultsController < ApplicationController
  def result
    url = ENV['CDSC_BASE_URL'] + '/result/result/check'
    response = HTTParty.post(
      url,
      headers: { 'Content-Type' => 'application/json'},
      body: {
        boid: ipo_params[:boid],
        companyShareId: ipo_params[:companyShareId]
      }.to_json
    )

    if (response.code == 200)
      render json: { boid: ipo_params[:boid], **response }
    else
      render json: { error: 'Something went wrong' }, status: :not_found
    end

  end

  private

  def ipo_params
    params.require(:ipo_result).permit(:boid, :companyShareId)
  end
end
