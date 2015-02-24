class Issue < ActiveRecord::Base
	belongs_to :bus
	validates :title, presence: true,
                    length: { minimum: 5 }
end
