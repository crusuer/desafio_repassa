class Evaluation < ApplicationRecord
  belongs_to :rated, :class_name => 'Employee'
  belongs_to :rater, :class_name => 'Employee'
end
