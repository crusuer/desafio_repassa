class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :rated_employees, :class_name => 'Employee', :foreign_key => 'rated_id'
  has_many :rater_employees, :class_name => 'Employee', :foreign_key => 'rater_id'
end
