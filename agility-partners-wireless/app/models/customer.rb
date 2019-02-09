class Customer < ApplicationRecord
  has_many :devices, class_name: "Device"
end
