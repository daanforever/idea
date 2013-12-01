class IdeasController < InheritedResources::Base

  def create
    @idea.user = current_user
    super
  end

  def update
    @idea = Idea.find(params[:id])
    @idea.user = current_user
    update!
  end

  def permitted_params
    params.permit(idea: [:title, :body])
  end
end
