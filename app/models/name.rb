# frozen_string_literal: true

class Name < ApplicationRecord
  validates :name, :surname, presence: true
end
