# frozen_string_literal: true

RSpec.describe Brasilis::Tropical::Amazonya::Tupan do
  context "when send a message to amazonya" do
    let(:process) { Brasilis::Tropical::Ambiance.new }
    let(:message) do
    end
    subject(:tupan) { described_class }

    before(:each) do
      process.run
    end

    it "return correctly" do
      tupan.send
    end
  end
end
