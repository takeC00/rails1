class Post < ApplicationRecord
  validates :title, presence: true
  validates :startday, presence: true
  validates :endday, presence: true
end
