require 'rspec'
require File.join(File.dirname(__FILE__),'../../lib/cash_register')

describe CashRegister do
  describe "total" do
    it "should be initialized with a total of 0.00" do

      expect(subject.total).to eq(0.00)
    end
  end

  describe "purchase(price)" do
    it "should return the value of '3.78' if purchace(3.78)" do
      expect(subject.purchase(3.78)).to eq(3.78)
    end

    it "should have changed total to '3.78'" do
      expect(subject.purchase(3.78)).to eq(3.78)
      expect(subject.total).to eq(3.78)
    end

    it "should return the value of '9.00' if purchase(5.22)" do
      expect(subject.purchase(3.78)).to eq(3.78)
      expect(subject.total).to eq(3.78)
      expect(subject.purchase(5.22)).to eq(9.00)
    end
  end

  describe "pay(amount)" do
    it "should return 'Your new total is $4.00' if pay(5.00)" do
      expect(subject.purchase(3.78)).to eq(3.78)
      expect(subject.total).to eq(3.78)
      expect(subject.purchase(5.22)).to eq(9.00)
      expect(subject.pay(5.00)).to eq("Your new total is $4.00.")
    end

    it "should return '4.00' if you now ask for total" do
      expect(subject.purchase(3.78)).to eq(3.78)
      expect(subject.total).to eq(3.78)
      expect(subject.purchase(5.22)).to eq(9.00)
      expect(subject.pay(5.00)).to eq("Your new total is $4.00.")
      expect(subject.total).to eq(4.00)
    end

    it "should return 'Your change is $1.00' if pay(5.00) again" do
      expect(subject.purchase(3.78)).to eq(3.78)
      expect(subject.total).to eq(3.78)
      expect(subject.purchase(5.22)).to eq(9.00)
      expect(subject.pay(5.00)).to eq("Your new total is $4.00.")
      expect(subject.total).to eq(4.00)
      expect(subject.pay(5.00)).to eq("Your change is $1.00.")
    end

    it "should return '0.00' when we check total again" do
      expect(subject.purchase(3.78)).to eq(3.78)
      expect(subject.total).to eq(3.78)
      expect(subject.purchase(5.22)).to eq(9.00)
      expect(subject.pay(5.00)).to eq("Your new total is $4.00.")
      expect(subject.total).to eq(4.00)
      expect(subject.pay(5.00)).to eq("Your change is $1.00.")
      expect(subject.total).to eq(0.00)
    end
  end
end