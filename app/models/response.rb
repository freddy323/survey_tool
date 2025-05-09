class Response < ApplicationRecord
  belongs_to :survey

  before_create :set_responded_at

  private

  def set_responded_at
    self.responded_at = Time.current
  end
end
