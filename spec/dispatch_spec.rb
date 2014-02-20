require 'spec_helper'

describe Dispatch do

  let(:dispatch) { Dispatch.new("/test.rb", "/this/is/a/") }

  describe "#alternative_find" do

    context 'searching the list of files' do
      
      it 'should find spec file in list' do
        dispatch.list = ["test_spec.rb", "test.rb"]
        expect(dispatch.alternative_file("/this/is/a/test.rb")).to eq("test_spec.rb")
      end

      it 'should return false if spec file is not found' do
        dispatch.list = ["test_xxxx.rb", "test.rb"]
        expect(dispatch.alternative_file("/this/is/a/test.rb")).to eq(false)
      end

    end

  end 
  
end
