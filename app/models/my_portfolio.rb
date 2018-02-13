class MyPortfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader
#scope for data query
  def self.angular
    where(subtitle: "Angular")
  end

  def self.by_position
    order("position ASC")
  end
#another way using lambda
  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }
#callback for setting up defaults
  # after_initialize :set_defaults
end