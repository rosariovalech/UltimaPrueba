class ClaimsController < ApplicationController
  def index
  	@claims = Claim.all
  	if params[:company_id].present?
  		@claims = Claim.where(company_id: params[:claim_id])
  		
  	end
  end
end
