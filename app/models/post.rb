class Post < ApplicationRecord
 has_many :comments	
 belongs_to :user, :optional => true
 has_one_attached :image
 include Rails.application.routes.url_helpers
  
  def to_text
    
    url=rails_blob_path(self.image,only_path: true)
    
   #url =Rails.application.routes.url_helpers.rails_blob_path(self.image, only_path: true)
    binding.pry
    self.content = RTesseract.new('/home/protonshub/Pictures/preview-image-onlinepngtools.png')
    self.content.to_s
    
  end
 
 
end 




