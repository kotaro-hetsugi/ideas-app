class CategoryIdea
  include ActiveModel::Model
  attr_accessor :category_name, :body

  def save
    category = Category.create(name: category_name)
    Idea.create(body: body,category_id: category.id)
  end

end