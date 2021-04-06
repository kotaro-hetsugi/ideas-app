class Idea < ApplicationRecord
  belongs_to :category

  def self.search(search)
    if search != ''
      category = Category.where('name LIKE(?)', "#{search}" )         # 完全一致
      ideas = Idea.where('category_id LIKE(?)' ,"#{category.ids[0]}")
      ideas = [] if ideas == ''
      return ideas
    else
      Idea.all
    end
  end
end
