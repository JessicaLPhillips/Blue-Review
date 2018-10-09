class Post < ApplicationRecord
  has_many :post_authors
  has_many :authors, through: :post_authors

  has_many :post_tags
  has_many :tags, through: :post_tags
end
