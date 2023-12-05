# frozen_string_literal: true

RSpec.describe SyntaxTree::DisableIntFormat do
  it "has a version number" do
    expect(SyntaxTree::DisableIntFormat::VERSION).not_to be nil
  end

  describe "#format" do
    subject { SyntaxTree::Formatter.format(source, SyntaxTree.parse(source)) }

    context "when 5 digits" do
      let(:source) { "10000\n" }

      it { is_expected.to eq source }
    end

    context "when underscore separated" do
      let(:source) { "10_000\n" }

      it { is_expected.to eq source }
    end
  end
end
