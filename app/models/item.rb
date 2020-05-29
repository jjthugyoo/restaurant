class Item < ApplicationRecord
    validates :name, presence: true
    validates :qty, numericality: { only_integer: true, :greater_than_or_equal_to => 0.0  } 
    validates :price, numericality:{:greater_than_or_equal_to => 0.0}
end
