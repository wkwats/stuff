class Order < ApplicationRecord
  belongs_to :sd

  enum category: [:customer, :supplier, :sub_contractor]
end
