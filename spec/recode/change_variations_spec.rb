require 'spec_helper'

describe ChangeVariations do
  describe '#change_variations' do
    subject { Class.new { include ChangeVariations }.new }

    it 'adds lowercase and plural variations' do
      expect(subject.change_variations 'Child', 'Kid').to eq [
        %w[children kids], %w[Children Kids],
        %w[child kid], %w[Child Kid]
      ]
    end

    it 'compacts the array to include unique values' do
      expect(subject.change_variations 'foot', 'meter').to eq [
        %w[feet meters], %w[foot meter]
      ]
    end

    it 'peroperly converts CamelCase to snake_case' do
      expect(subject.change_variations 'TableSpoon', 'MapleSyrup').to eq [
        %w[table_spoons maple_syrups], %w[TableSpoons MapleSyrups],
        %w[table_spoon maple_syrup], %w[TableSpoon MapleSyrup]
      ]
    end

    it 'peroperly converts irregular CamelCase to snake_case' do
      expect(subject.change_variations 'TinyPerson', 'HappyPerson').to eq [
        %w[tiny_people happy_people], %w[TinyPeople HappyPeople],
        %w[tiny_person happy_person], %w[TinyPerson HappyPerson]
      ]
    end
  end
end
