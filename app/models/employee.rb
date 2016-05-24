class Employee < ActiveRecord::Base
  has_many :dependents, dependent: :destroy
  has_many :assignments
  has_many :projects, through: :assignments
  belongs_to :department
  paginates_per 15
end
