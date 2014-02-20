require 'spec_helper'

describe Officer do

  describe '#on_duty' do

    before(:all) do
      @officer = Officer.new
    end

    it 'should return null' do
      FSSM.should_receive(:monitor)
      @officer.on_duty
    end
  end

end
