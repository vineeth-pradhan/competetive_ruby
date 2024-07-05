require 'spec_helper'
load 'roman_to_integer.rb'

describe '#roman' do
  context 'when the input is "IV"' do
    it 'equals 4' do
      expect(roman('IV')).to eq(4)
    end
  end

  context 'when the input is "V"' do
    it 'equals 5' do
      expect(roman('V')).to eq(5)
    end
  end 

  context 'when the input is "I"' do
    it 'equals 1' do
      expect(roman('I')).to eq(1)
    end
  end

  context 'when the input is "M"' do
    it 'equals 1000' do
      expect(roman('M')).to eq(1000)
    end
  end

  context 'when the input is "MM"' do
    it 'equals 2000' do
      expect(roman('MM')).to eq(2000)
    end
  end

  context 'when the input is "MMM"' do
    it 'equals 3000' do
      expect(roman('MMM')).to eq(3000)
    end
  end

  context 'when the input is "MMCMXCIX"' do
    it 'equals 2999' do
      expect(roman('MMCMXCIX')).to eq(2999)
    end
  end

  context 'when the input is "MCCCXXXVI"' do
    it 'equals 1336' do
      expect(roman('MCCCXXXVI')).to eq(1336)
    end
  end
end
