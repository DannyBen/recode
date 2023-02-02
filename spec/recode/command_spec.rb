require 'spec_helper'

describe Command do
  subject { CLI.router }

  context 'without arguments' do
    it 'shows short usage' do
      expect { subject.run %w[] }.to output_approval('cli/usage')
    end
  end

  context 'with --help' do
    it 'shows long usage' do
      expect { subject.run %w[--help] }.to output_approval('cli/help')
    end
  end

  context 'with required arguments' do
    it 'shows refactor changes' do
      in_sample_dir do
        expect { subject.run %w[Person to User in rb yml] }
          .to output_approval('cli/refactor/person-user')
      end
    end

    context 'with --apply' do
      it 'applies the refactor changes' do
        in_sample_dir do
          expect { subject.run %w[Person to User in rb yml --apply] }
            .to output_approval('cli/refactor/person-user-apply')
        end
      end
    end

    context 'with --prompt' do
      it 'applies the refactor changes' do
        allow($stdin).to receive(:getch).and_return('y')

        in_sample_dir do
          expect { subject.run %w[Person to User in rb yml --prompt] }
            .to output_approval('cli/refactor/person-user-prompt')
        end
      end

      context 'when answering no' do
        it 'does not apply the changes' do
          allow($stdin).to receive(:getch).and_return 'n'

          in_sample_dir do
            expect { subject.run %w[Person to User in rb yml --prompt] }
              .to output_approval('cli/refactor/person-user-prompt-no')
          end
        end
      end

      context 'when answering quit' do
        it 'quits' do
          allow($stdin).to receive(:getch).and_return 'q'

          in_sample_dir do
            expect do
              expect { subject.run %w[Person to User in rb yml --prompt] }
                .to output_approval('cli/refactor/person-user-prompt-quit')
            end.to raise_error(Recode::Abort)
          end
        end
      end
    end
  end
end
