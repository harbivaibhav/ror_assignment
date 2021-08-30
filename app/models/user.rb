class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, presence: false
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :company_name, presence: true
  validates :status, presence: true
  validates :role, presence: true

  mount_uploader :profile_image, AttachmentUploader # Tells rails to use this uploader for this model.
  validates :profile_image, presence: true
  
end


