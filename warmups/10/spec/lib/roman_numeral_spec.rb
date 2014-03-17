require 'rspec'
require './lib/roman_numeral'

describe RomanNumeral do
  subject { RomanNumeral }
  describe "#translate" do
    it "returns I for 1" do
      expect(subject.translate(1)).to eq("I")
    end
    it "returns II for 2" do
      expect(subject.translate(2)).to eq("II")
    end
    it "returns III for 3" do
      expect(subject.translate(3)).to eq("III")
    end
    it "returns IV for 4" do
      expect(subject.translate(4)).to eq("IV")
    end
    it "returns V for 5" do
      expect(subject.translate(5)).to eq("V")
    end
    it "returns VI for 6" do
      expect(subject.translate(6)).to eq("VI")
    end
    it "returns VII for 7" do
      expect(subject.translate(7)).to eq("VII")
    end
    it "returns IX for 9" do
      expect(subject.translate(9)).to eq("IX")
    end
    it "returns X for 10" do
      expect(subject.translate(10)).to eq("X")
    end
    it "returns XI for 11" do
      expect(subject.translate(11)).to eq("XI")
    end
    it "returns XVII for 17" do
      expect(subject.translate(17)).to eq("XVII")
    end
    it "returns XX for 20" do
      expect(subject.translate(20)).to eq("XX")
    end
    it "returns XXX for 30" do
      expect(subject.translate(30)).to eq("XXX")
    end
    it "returns XL for 40" do
      expect(subject.translate(40)).to eq("XL")
    end
    it "returns XLIX for 49" do
      expect(subject.translate(49)).to eq("XLIX")
    end
    it "returns L for 50" do
      expect(subject.translate(50)).to eq("L")
    end
  end
end