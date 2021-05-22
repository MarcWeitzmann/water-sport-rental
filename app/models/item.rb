class Item < ApplicationRecord
  belongs_to :category
  belongs_to :school

  has_one_attached :photo

  has_many :reviews, dependent: :destroy
  
end
