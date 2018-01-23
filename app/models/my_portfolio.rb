class MyPortfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
#scope for data query
  def self.angular
    where(subtitle: "Angular")
  end
#another way using lambda
  scope :ruby_on_rails, -> { where(subtitle:"Ruby on Rails") }
#callback for setting up defaults
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
