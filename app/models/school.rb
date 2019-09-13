class School < ApplicationRecord
  # Validations
  validates_presence_of :name, :address, :principal, :capacity, :private_school
  validates_uniqueness_of :name
  # Associations
end
