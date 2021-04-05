class IdeasController < ApplicationController
  def index 
  end

  def new
    @category_idea = CategoryIdea.new
  end

  def create
    @category_idea = CategoryIdea.new(category_idea_params)
    if @category_idea.valid?
      @category_idea.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def category_idea_params
    params.require(:category_idea).permit(:category_name, :body)#.merge(category_id: category_id)
  end
end
