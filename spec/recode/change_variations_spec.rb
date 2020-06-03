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

    it "peroperly converts CamelCase to snake_case" do
      expect(subject.change_variations "TableSpoon", "MapleSyrup").to eq [
        ["table_spoons", "maple_syrups"], ["TableSpoons", "MapleSyrups"],
        ["table_spoon", "maple_syrup"], ["TableSpoon", "MapleSyrup"]
      ]
    end
  end
end
