# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: %w[chinese japanese italian belgian french] }
end
