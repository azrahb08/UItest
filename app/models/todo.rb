class Todo < ApplicationRecord
  belongs_to :event, optional: true
end
