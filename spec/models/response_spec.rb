require 'rails_helper'

RSpec.describe Response, type: :model do
  let(:response) { create(:response) }

  it "is valid with valid attributes" do
    expect(response).to be_valid
  end

  it "sets responded_at before create" do
    response = build(:response, responded_at: nil)
    response.save
    expect(response.responded_at).not_to be_nil
  end

  describe "associations" do
    it { should belong_to(:survey) }
  end
end
