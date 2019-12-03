module ApplicationHelper
    def format_BRL(value)
        ActionController::Base.helpers.number_to_currency(value, :unit => "R$ ", :separator => ",", :delimiter => ".")
    end
end
