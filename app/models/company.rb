class Company < ApplicationRecord
  belongs_to :user
  has_many :workers, :dependent => :destroy
  validates_uniqueness_of :name
end
