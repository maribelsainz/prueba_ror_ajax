class ComplainsController < ApplicationController
  def create
    @complain = Complain.new(
      content: params[:complain][:content],
      company: Company.find(params[:company_id]),
      user: current_user
    )
    @complain.save
    respond_to :js
  end
end

