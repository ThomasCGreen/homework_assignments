require 'rspec'
require File.join(File.dirname(__FILE__), '../../lib/warmup04')

describe Warmup04 do

  it 'should be a Warmup04' do
    expect(subject).to be_a(Warmup04)
  end

  it 'given find_multiples(3,2) it should return []' do
    expect(subject.find_multiples(3,2)).to eq([])
  end

  it 'given find_multiples(3,3) it should return [3]' do
    expect(subject.find_multiples(3,3)).to eq([3])
  end

  it 'given find_multiples(3,5) it should return [3]' do
    expect(subject.find_multiples(3,5)).to eq([3])
  end

  it 'given find_multiples(3,6) it should return [3,6]' do
    expect(subject.find_multiples(3,6)).to eq([3,6])
  end

  it 'given find_multiples(0,10) it should return nil' do
    expect(subject.find_multiples(0,10)).to eq(nil)
  end

  it 'given find_multiples(-2,10) it should return nil' do
    expect(subject.find_multiples(-2,10)).to eq(nil)
  end

  it 'given find_multiples(3,10) it should return [3,6,9]' do
    expect(subject.find_multiples(3,10)).to eq([3,6,9])
  end
end