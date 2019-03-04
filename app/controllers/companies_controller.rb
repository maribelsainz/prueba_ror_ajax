class CompaniesController < ApplicationController
  before_action :check_permission, only: %i[create show update destroy]

  def index
    @companies = Company.order('created_at DESC')
    @company = Company.new
  end

  def create
    @company = Company.new(
      name: params[:company][:name],
      # user_id: current_user.id
    )
    @company.save
    respond_to :js
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    respond_to :js
  end

  def edit
    @company = Company.find(params[:id])
    respond_to :js
  end

  def update
    @company = Company.find(params[:id])
    @company.name = params[:company][:name]
    @company.save
    respond_to :js
  end

  def show
    @company = Company.find(params[:id])
    respond_to :js
  end


  def check_permission
    redirect_to root_path, alert: 'No posee los permisos necesarios.' and return unless current_user
  end
end
