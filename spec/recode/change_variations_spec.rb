require 'spec_helper'

describe ChangeVariations do
  describe '#change_variations' do
    subject { Class.new { include ChangeVariations }.new }

    it "adds lowercase and plural variations" do
      expect(subject.change_variations "Child", "Kid").to eq [
        ["children", "kids"], ["Children", "Kids"], 
        ["child", "kid"], ["Child", "Kid"]
      ]
    end

    it "compacts the array to include unique values" do
      expect(subject.change_variations "foot", "meter").to eq [
        ["feet", "meters"], ["foot", "meter"]
      ]
    end
  end
end
