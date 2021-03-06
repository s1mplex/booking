class TicketType < ActiveRecord::Base
  belongs_to :show_type

  validates :price_in_eurocents, numericality: true
  validates :show_type, presence: true
  validates :name, presence: true, uniqueness: true
end
