class Post < ApplicationRecord
  belongs_to :blog
  has_many :favorites
end
