class Restaurant < ApplicationRecord
    has_many :menus
    has_and_belongs_to_many :users
end
