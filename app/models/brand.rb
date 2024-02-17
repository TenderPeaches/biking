class Brand < ApplicationRecord
    has_many :bicycle_part_models
    has_many :bicycle_part_types, through: :bicycle_part_models
    has_many :tools
end
