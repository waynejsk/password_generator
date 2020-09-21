class Key < ApplicationRecord
  validates :key_label, presence: true
  validates :key, presence: true
  belongs_to :user
end
