class School < ApplicationRecord
  has_many :items
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def owner?(current_user)
    current_user == user
  end
end
