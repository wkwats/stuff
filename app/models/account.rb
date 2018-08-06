class Account < ApplicationRecord
	
	has_many :sds, dependent: :destroy

	accepts_nested_attributes_for :sds, allow_destroy: true, reject_if: proc{ |att| att['number'].blank? }

	validates :name, presence: true
	

end
