class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :companies
  accepts_nested_attributes_for :companies,  :reject_if => :all_blank, :allow_destroy => true
end
