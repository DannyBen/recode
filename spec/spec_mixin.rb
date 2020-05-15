require 'stringio'

module SpecMixin
  def reset_sample_dir
    system 'rm -rf spec/tmp/sample'
    system 'cp -r spec/fixtures/sample spec/tmp/'
  end

  def in_sample_dir(&block)
    reset_sample_dir
    Dir.chdir 'spec/tmp/sample', &block
  end
end
