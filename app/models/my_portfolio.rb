class MyPortfolio < ApplicationRecord
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
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200" 
  end
end
