class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  enum :status, { pending: 0, confirmed: 1, archived: 2 }, prefix: true, scopes: false
end
