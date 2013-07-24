require 'spec_helper'

describe Lang8 do
  describe 'const' do
    describe 'AUTHOR' do
      it { subject::AUTHOR.should eql 'alpaca-tc' }
    end
  end
end
