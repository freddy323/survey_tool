require 'rails_helper'

RSpec.describe Survey, type: :model do
  let(:survey) { create(:survey) }

  it "is valid with valid attributes" do
    expect(survey).to be_valid
  end

  it "is not valid without a question" do
    survey.question = nil
    expect(survey).not_to be_valid
  end

  describe "associations" do
    it { should have_many(:responses).dependent(:destroy) }
  end

  describe "#yes_percentage" do
    it "returns 0 when no responses" do
      expect(survey.yes_percentage).to eq(0)
    end

    it "calculates correct percentage" do
      create(:response, survey: survey, answer: true)
      create(:response, survey: survey, answer: false)
      expect(survey.yes_percentage).to eq(50)
    end
  end
end
