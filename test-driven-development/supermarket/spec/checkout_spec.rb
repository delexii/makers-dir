require "checkout"

RSpec.describe Checkout do

  describe "#view_price" do
    it "returns the price of an item" do
      checkout = Checkout.new("bread","£10.00")
      checkout.view_price("bread")
      expect(checkout.view_price("bread")).to eq("£10.00")
    end
  end

  describe "#scan_item" do
    it "scans item to the shopping list" do
      checkout = Checkout.new("bread", "£10.00")   
      checkout.scan_item("bread", "£10.00")
      expect(checkout.shopping_list).to include("bread" => "£10.00")
    end
  end

  describe "#view_scanned_items" do
    it "returns a list with all scanned items" do
      checkout = Checkout.new("bread","£10.00")
      expect(checkout.view_scanned_items).not_to be_empty
    end
  end
end