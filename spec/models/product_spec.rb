require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.find_or_create_by! name: 'Test'
    @product = Product.new(name: "Product Name", description: "Product description", price: 100, quantity: 100, category: @category)
  end

  describe 'Validations' do
    it "should be valid with valid parameters" do
      expect(@product).to be_valid
    end
    it "should not be valid without a name" do
      @product.name = nil
      expect(@product).to_not be_valid
    end
    # it "should be valid without a desciption" do
    #   @product.description = nil
    #   expect(@product).to be_valid
    # end
    it "should not be valid without a price" do
      @product.price_cents = nil
      expect(@product).to_not be_valid
    end
    it "should not be valid without a quantity" do
      @product.quantity = nil
      expect(@product).to_not be_valid
    end
    it "should not be valid without a category" do
      @product.category = nil
      expect(@product).to_not be_valid
    end

  end
end
