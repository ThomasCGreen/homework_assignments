require 'rspec'
require File.join(File.dirname(__FILE__),'../../lib/thermostat')

describe Thermostat do
  describe "inside temp" do
    it 'should return the inside temperature of 68 degrees by default' do
      expect(subject.inside_temp).to eq(68.0)
    end
  end

  describe "set point" do
    it 'should return the initial set point of 72 degrees' do
      expect(subject.setpoint).to eq(72.0)
    end

    it 'should allow us to set the set point to 70 degrees' do
      expect(subject.new_setpoint(70.0)).to eq(70.0)
    end

    it 'should return the new set point with set_point?' do
      subject.new_setpoint(70.0)
      expect(subject.setpoint).to eq(70.0)
    end
  end

  describe "is_on?" do
    it 'should return "false" when initially checking if on' do
      expect(subject.is_on?).to eq(false)
    end
  end

  describe "run" do
    it 'should run for one minute, turn on the furnace, and temperature should drop initially if run(1)' do
      temp = subject.inside_temp
      expect(subject.run(1)).to eq(true)
      expect(subject.is_on?).to eq(true)
      expect(subject.inside_temp).to be < temp
    end

    it 'should run for two minutes, turn on the furnace and the temperature should increase, if run(2)' do
      temp = subject.inside_temp
      expect(subject.run(2)).to eq(true)
      expect(subject.is_on?).to eq(true)
      expect(subject.inside_temp).to be > temp
    end

    it 'should run for 83 minutes, turn off the furnace and the temperature should be over 73.0' do
      expect(subject.run(83)).to eq(false)
      expect(subject.inside_temp).to be > 73.0
    end

    it 'should run for 134 minutes, turn on the furnace and the temperature should be below 71.0' do
      expect(subject.run(134)).to eq(true)
      expect(subject.inside_temp).to be < 71.0
    end
  end
end