class Menu < ApplicationRecord
    belongs_to :restaurants, optional: true
end
