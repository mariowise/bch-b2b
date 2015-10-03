class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  before_action :authorize_action, only: [:show, :edit, :update, :destroy]
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "offers", :offers_path

  # GET /offers
  def index
    @offers = Offer.all
  end

  # GET /offers/1
  def show
    add_breadcrumb @offer, offers_path(@offer)
  end

  # GET /offers/new
  def new
    add_breadcrumb "Nuevo"
    @offer = Offer.new
  end

  # GET /offers/1/edit
  def edit
    add_breadcrumb @offer, offers_path(@offer)
    add_breadcrumb "Editar"
  end

  # POST /offers
  def create
    add_breadcrumb "Nuevo"
    @offer = Offer.new(offer_params)

    if @offer.save
      redirect_to @offer, notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /offers/1
  def update
    add_breadcrumb @offer, offers_path(@offer)
    add_breadcrumb "Editar"
    
    if @offer.update(offer_params)
      redirect_to @offer, notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /offers/1
  def destroy
    @offer.destroy
    if @offer.errors.empty?
      redirect_to offers_url, notice: 'Offer was successfully destroyed.'
    else
      redirect_to @offer, alert: "#{@offer.errors.messages[:base][0]}"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def offer_params
      params.require(:offer).permit(:product, :title, :description)
    end

    # Authorize actions?
    def authorize_action
      authorize @offer
    end

    def authorize_class
      authorize Offer
    end
end
