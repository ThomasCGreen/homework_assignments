require 'rspec'
require File.join(File.dirname(__FILE__), '../../lib/warmup06')

describe Warmup06 do

  it 'should be a Warmup06' do
    expect(subject).to be_a(Warmup06)
  end

  it 'should initially show a value of 0 for .to_s' do
    expect(subject.to_s).to eq("0")
  end

  it 'should return \"3/4\" when we add(\"1/2\", \"1/4\")'  do
    expect(subject.add("1/2", "1/4")).to eq("3/4")
  end

end