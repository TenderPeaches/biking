class BicyclePartModel < ApplicationRecord
  belongs_to :brand
  belongs_to :bicycle_part_spec
end
