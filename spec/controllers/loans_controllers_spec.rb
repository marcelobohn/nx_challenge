require "rails_helper"

RSpec.describe LoansController do
  let(:valid_attributes) {
    FactoryBot.build(:loan).attributes
  }

  describe "GET show" do
    it do
      create(:loan)
      get :show, params: { id: 1 }
      param = JSON.parse(response.body).with_indifferent_access
      expect(param[:data][:id]).to(eq(1))
    end
  end

  describe "POST create" do
    it do
      post :create, :params => { loan: valid_attributes }
      param = JSON.parse(response.body).with_indifferent_access
      expect(param[:data][:id]).to(eq(1))
      expect(param[:data][:name]).to(eq('My Loan'))
    end
  end
end
