# app/models/survey.rb
class Survey < ApplicationRecord
  has_many :responses, dependent: :destroy

  validates :question, presence: true

  def yes_percentage
    return 0 if responses.empty?
    (responses.where(answer: true).count.to_f / responses.count * 100).round
  end

  def no_percentage
    return 0 if responses.empty?
    (responses.where(answer: false).count.to_f / responses.count * 100).round
  end
end
