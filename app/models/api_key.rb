class ApiKey < ApplicationRecord
  before_create :generate_access_token

  private

  def generate_access_token
    self.access_token = SecureRandom.hex
  end
end
