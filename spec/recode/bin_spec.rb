require 'spec_helper'

describe 'bin/recode' do
  subject { CLI.router }

  it "shows usage patterns" do
    expect{ subject.run }.to output_fixture('cli/usage')
  end

  # context "on exception" do
  #   it "errors gracefuly" do
  #     expect(`bin/recode command that errors 2>&1`).to match_fixture('cli/exception')
  #   end
  # end
end
