class CategoryIdea
  include ActiveModel::Model
  attr_accessor :category_name, :body

  with_options presence: true do
    validates :category_name
    validates :body
  end

  def save
    category = Category.where(name: category_name).first_or_initialize
    category.save
    Idea.create(body: body,category_id: category.id)
  end

end