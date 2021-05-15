class School < ApplicationRecord
  has_many :items
  belongs_to :user
  geocoded_by :address_from_components
  after_validation :geocode, if: :will_save_change_to_street?

  def address_from_components
    "#{street}, #{city}"
  end

end
