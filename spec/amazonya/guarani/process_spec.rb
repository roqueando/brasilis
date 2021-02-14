# frozen_string_literal: true

RSpec.describe Brasilis::Tropical::Amazonya::Guarani do
  context "when add a new block" do
    let(:process) { Brasilis::Tropical::Amazonya::Guarani::Process.new }

    before(:each) do
      process.first
      process.next("name")
      puts process.blocks[1]
    end

    it "add into chain array the new block" do
      expect(process.blocks.length).to eq(2)
      expect(process.blocks[1].data).to eq("name")
    end
  end
end
