class MyPortfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
#scope for data query
  def self.angular
    where(subtitle: "Angular")
  end
#another way using lambda
  scope :ruby_on_rails, -> { where(subtitle:"Ruby on Rails") }
end
