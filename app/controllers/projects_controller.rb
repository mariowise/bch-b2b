class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  # before_action :authorize_action, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Proyectos", :projects_path

  # GET /projects
  def index
    if !params[:tag]
      @projects = Project.all
    else
      @projects = Tag.find(params[:tag]).projects
    end
    @projects = @projects.paginate(:page => params[:page])
  end

  # GET /projects/1
  def show
    add_breadcrumb @project, projects_path(@project)
  end

  # GET /projects/new
  def new
    add_breadcrumb "Nuevo"
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    add_breadcrumb @project, projects_path(@project)
    add_breadcrumb "Editar"
  end

  # POST /projects
  def create
    add_breadcrumb "Nuevo"
    @project = Project.new(project_params)
    @project.user = current_user

    if @project.save
      redirect_to @project, notice: 'El proyecto ha sido creado.'
    else
      render :new
    end
  end

  # PATCH/PUT /projects/1
  def update
    add_breadcrumb @project, projects_path(@project)
    add_breadcrumb "Editar"
    @project.user = current_user
    
    if @project.update(project_params)
      redirect_to @project, notice: 'El proyecto ha sido actualizado.'
    else
      render :edit
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    if @project.errors.empty?
      redirect_to projects_url, notice: 'El proyecto ha sido eliminado.'
    else
      redirect_to @project, alert: "#{@project.errors.messages[:base][0]}"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      aux = params.require(:project).permit(
        :name, 
        :description, 
        :investment,
        :tags)
      aux[:tags] = Tag.find aux[:tags].split(",") if aux[:tags] != ""
      aux
    end

    # Authorize actions?
    def authorize_action
      authorize @project
    end

    def authorize_class
      authorize Project
    end
end
