class NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]
  before_action :authorize_action, only: [:show, :edit, :update, :destroy]
  before_action :set_notice, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "notices", :notices_path

  # GET /notices
  def index
    @notices = Notice.all
  end

  # GET /notices/1
  def show
    add_breadcrumb @notice, notices_path(@notice)
  end

  # GET /notices/new
  def new
    add_breadcrumb "Nuevo"
    @notice = Notice.new
  end

  # GET /notices/1/edit
  def edit
    add_breadcrumb @notice, notices_path(@notice)
    add_breadcrumb "Editar"
  end

  # POST /notices
  def create
    add_breadcrumb "Nuevo"
    @notice = Notice.new(notice_params)

    if @notice.save
      redirect_to @notice, notice: 'Notice was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /notices/1
  def update
    add_breadcrumb @notice, notices_path(@notice)
    add_breadcrumb "Editar"
    
    if @notice.update(notice_params)
      redirect_to @notice, notice: 'Notice was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /notices/1
  def destroy
    @notice.destroy
    if @notice.errors.empty?
      redirect_to notices_url, notice: 'Notice was successfully destroyed.'
    else
      redirect_to @notice, alert: "#{@notice.errors.messages[:base][0]}"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def notice_params
      params.require(:notice).permit(:actions, :price)
    end

    # Authorize actions?
    def authorize_action
      authorize @notice
    end

    def authorize_class
      authorize Notice
    end
end
