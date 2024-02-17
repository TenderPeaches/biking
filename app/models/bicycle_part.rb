class BicyclePart < ApplicationRecord
  belongs_to :bicycle_system
  has_many :bicycle_part_types
  has_many :bicycle_part_models, through: :bicycle_part_types
end
