class Idea < ApplicationRecord
  belongs_to :category

  def self.search(search)
    if search != ''
      category = Category.where('name LIKE(?)', "#{search}" )
      ideas = ''
      category.ids.each do |c|
        ideas = Idea.where('category_id LIKE(?)' ,"#{c}")
      end
      return ideas
    else
      Idea.all
    end
  end
end
