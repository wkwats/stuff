class Invoice < ApplicationRecord
  belongs_to :order

  enum milestone: [:dp, :pre_pac, :pac, :fac]

  enum status: [:raised, :uploaded, :paid]
end
