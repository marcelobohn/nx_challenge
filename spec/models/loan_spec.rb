require "rails_helper"

RSpec.describe Loan, type: :model do
  describe "#create" do
    it "default params" do
      load = build(:loan)
      expect(load.name).to eq('My Loan')
      expect(load.value).to eq(1500.0)
    end
  end
end
