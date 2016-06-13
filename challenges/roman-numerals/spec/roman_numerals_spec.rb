require 'rspec'
require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'converts 1 to I' do
      expect(convert_to_roman(1)).to eq "I"
    end

    it 'converts 4 to IIII' do
      expect(convert_to_roman(4)).to eq "IIII"
    end

    it "converts 5 to V" do
      expect(convert_to_roman(5)).to eq "V"
    end

    it "converts 7 to VII" do
      expect(convert_to_roman(7)).to eq "VII"
    end
  end

  describe 'modern Roman numerals' do
    it "takes an options hash and returns modern roman numeral" do
      expect(convert_to_roman(9, { modern: true })).to eq "IX"
    end

    it "returns IV for 4" do
      expect(convert_to_roman(4, { modern: true })).to eq "IV"
    end

    it "returns XIV for 14" do
      expect(convert_to_roman(14, { modern: true })).to eq "XIV"
    end

    it "returns XLIV for 44" do
      expect(convert_to_roman(44, { modern: true })).to eq "XLIV"
    end

    it "returns XCIX for 99" do
      expect(convert_to_roman(99, { modern: true })).to eq "XCIX"
    end

    it "returns CD for 400" do
      expect(convert_to_roman(400, { modern: true })).to eq "CD"
    end

    it "returns CMXLIV for 944" do
      expect(convert_to_roman(944, { modern: true })).to eq "CMXLIV"
    end

    it "returns MCDXCVIII for 1498" do
      expect(convert_to_roman(1498, { modern: true })).to eq("MCDXCVIII")
    end
  end
end
