require 'rails_helper'

RSpec.describe SurveysController, type: :controller do
  let(:survey) { create(:survey) }

  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: { id: survey.id }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Survey" do
        expect {
          post :create, params: { survey: attributes_for(:survey) }
        }.to change(Survey, :count).by(1)
      end
    end

    context "with invalid params" do
      it "does not create a new Survey" do
        expect {
          post :create, params: { survey: { question: nil } }
        }.not_to change(Survey, :count)
      end
    end
  end
end
