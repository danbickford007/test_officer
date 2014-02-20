require 'spec_helper'

describe Officer do

  describe '#on_duty' do

    before(:all) do
      @officer = Officer.new
    end


    it 'should return null' do
      expect (@officer.on_duty.should).to equal nil
    end
  end

end
