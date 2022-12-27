class Author < ApplicationRecord
    has_many :books
    validates :name, :bio, :presence => true
end
