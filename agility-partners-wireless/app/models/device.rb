class Device < ApplicationRecord
  belongs_to:owner, class_name: "Customer"
end
