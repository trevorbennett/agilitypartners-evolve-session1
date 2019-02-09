class CallLog < ApplicationRecord
  belongs_to :to
  belongs_to :from
end
