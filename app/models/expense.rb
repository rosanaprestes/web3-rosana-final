class Expense < ApplicationRecord
    belongs_to :provider

    def self.total 
        self.sum(:value)    
        
    end
    
    
end
