class ProjectsController<ApplicationController

  def index
    # @items = @m.items
  end

  def show
    @project = Project.find(params[:id])
  end
  
end
