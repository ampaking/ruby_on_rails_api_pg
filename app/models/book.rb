class Book < ApplicationRecord
  belongs_to :author
  validates :title, :genre, :pages, :author_id, :presence => true
end
