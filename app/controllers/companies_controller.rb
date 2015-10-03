class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  # before_action :authorize_action, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Empresas", :companies_path

  # GET /companies
  def index
    @companies = Company.all
  end

  # GET /companies/1
  def show
    add_breadcrumb @company, companies_path(@company)
  end

  # GET /companies/new
  def new
    add_breadcrumb "Nuevo"
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
    add_breadcrumb @company, companies_path(@company)
    add_breadcrumb "Editar"
  end

  # POST /companies
  def create
    add_breadcrumb "Nuevo"
    @company = Company.new(company_params)

    if @company.save
      redirect_to @company, notice: 'Company was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /companies/1
  def update
    add_breadcrumb @company, companies_path(@company)
    add_breadcrumb "Editar"
    
    if @company.update(company_params)
      redirect_to @company, notice: 'Company was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /companies/1
  def destroy
    @company.destroy
    if @company.errors.empty?
      redirect_to companies_url, notice: 'Company was successfully destroyed.'
    else
      redirect_to @company, alert: "#{@company.errors.messages[:base][0]}"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def company_params
      params.require(:company).permit(:name, :score, :rut, :category, :avatar)
    end

    # Authorize actions?
    def authorize_action
      authorize @company
    end

    def authorize_class
      authorize Company
    end
end
