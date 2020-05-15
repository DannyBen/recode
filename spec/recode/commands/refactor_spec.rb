require 'spec_helper'

describe 'bin/recode-refactor' do
  subject { CLI.router }

  context "without arguments" do
    it "shows short usage" do
      expect{ subject.run %w[refactor]}.to output_fixture('cli/refactor/usage')
    end
  end

  context "with --help" do
    it "shows long usage" do
      expect{ subject.run %w[refactor --help] }.to output_fixture('cli/refactor/help')
    end
  end

  context "with required arguments" do
    # Implement
  end
end
