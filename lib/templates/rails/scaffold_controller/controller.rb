<% if namespaced? -%>
require_dependency "<%= namespaced_file_path %>/application_controller"

<% end -%>
<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApplicationController
  before_action :set_<%= singular_table_name %>, only: [:show, :edit, :update, :destroy]
  before_action :authorize_action, only: [:show, :edit, :update, :destroy]
  before_action :set_<%= singular_table_name %>, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "<%= plural_table_name %>", :<%= plural_table_name %>_path

  # GET <%= route_url %>
  def index
    @<%= plural_table_name %> = <%= orm_class.all(class_name) %>
  end

  # GET <%= route_url %>/1
  def show
    add_breadcrumb @<%= singular_table_name %>, <%= plural_table_name %>_path(@<%= singular_table_name %>)
  end

  # GET <%= route_url %>/new
  def new
    add_breadcrumb "Nuevo"
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
  end

  # GET <%= route_url %>/1/edit
  def edit
    add_breadcrumb @<%= singular_table_name %>, <%= plural_table_name %>_path(@<%= singular_table_name %>)
    add_breadcrumb "Editar"
  end

  # POST <%= route_url %>
  def create
    add_breadcrumb "Nuevo"
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "#{singular_table_name}_params") %>

    if @<%= orm_instance.save %>
      redirect_to @<%= singular_table_name %>, notice: <%= "'#{human_name} was successfully created.'" %>
    else
      render :new
    end
  end

  # PATCH/PUT <%= route_url %>/1
  def update
    add_breadcrumb @<%= singular_table_name %>, <%= plural_table_name %>_path(@<%= singular_table_name %>)
    add_breadcrumb "Editar"
    
    if @<%= orm_instance.update("#{singular_table_name}_params") %>
      redirect_to @<%= singular_table_name %>, notice: <%= "'#{human_name} was successfully updated.'" %>
    else
      render :edit
    end
  end

  # DELETE <%= route_url %>/1
  def destroy
    @<%= orm_instance.destroy %>
    if @<%= singular_table_name %>.errors.empty?
      redirect_to <%= index_helper %>_url, notice: <%= "'#{human_name} was successfully destroyed.'" %>
    else
      redirect_to @<%= singular_table_name %>, alert: "#{@<%= singular_table_name %>.errors.messages[:base][0]}"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_<%= singular_table_name %>
      @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    end

    # Only allow a trusted parameter "white list" through.
    def <%= "#{singular_table_name}_params" %>
      <%- if attributes_names.empty? -%>
      params[:<%= singular_table_name %>]
      <%- else -%>
      params.require(:<%= singular_table_name %>).permit(<%= attributes_names.map { |name| ":#{name}" }.join(', ') %>)
      <%- end -%>
    end

    # Authorize actions?
    def authorize_action
      authorize @<%= singular_table_name %>
    end

    def authorize_class
      authorize <%= singular_table_name.capitalize %>
    end
end
<% end -%>
