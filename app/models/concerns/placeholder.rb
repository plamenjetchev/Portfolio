module Placeholder
  extend ActiveSupport::Concern
#Abstracting module with methods to avoid hardcoded links for placeholding
  def self.image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end    
end