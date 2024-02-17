class BicyclePartType < ApplicationRecord
  belongs_to :bicycle_part
  belongs_to :parent_type, class_name: "BicyclePartType", optional: true
  has_many :bicycle_part_specs
  has_many :sub_types, class_name: "BicyclePartType", inverse_of: :parent_type
end
