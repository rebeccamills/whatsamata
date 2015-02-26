class Issue < ActiveRecord::Base
	belongs_to :bus
	belongs_to :user
	validates :title, presence: true,
                    length: { minimum: 5 }
end
