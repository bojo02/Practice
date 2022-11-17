class Storage < ApplicationRecord
  belongs_to :location
  belongs_to :ip
end
