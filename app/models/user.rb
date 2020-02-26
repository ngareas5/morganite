class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # before_validation :default_name
  # after_validation :capitalize_name
  
 # validates  :name, :title,  presence: true
  private
  def default_name
   self.name ='nihal' if name.blank?
  end 
   def capitalize_name
        self.name = name.upcase 
  end
 
  
   
 
  has_many :posts
  has_many :comments
 
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end





