class Key < ApplicationRecord
  validates :key_label, presence: true
  validates :key, presence: true
end
