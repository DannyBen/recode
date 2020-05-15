require 'spec_helper'

describe Diffing do
  describe '#diff' do
    subject { Class.new { include Diffing }.new }
    let(:before) { "parked cars\nwill be fine"}
    let(:after) { "parked cars\nwill be fined"}

    it "returns diff specs" do
      expect(subject.diff(before, after).to_s).to match_fixture('diff/output')
    end
  end
end
