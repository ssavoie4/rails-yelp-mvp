class Restaurant < ApplicationRecord
  CATEGORY = %[chinese italian french]

  has_many :reviews
end
