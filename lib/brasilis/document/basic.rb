# frozen_string_literal: true

module Brasilis
  module DOC
    # Basic information for DOC
    class Basic
      attr_reader :name, :filiation, :naturality, :birth

      def initialize(name, filiation, naturality, birth)
        @name = name
        @filiation = filiation
        @naturality = naturality
        @birth = birth
      end
    end
  end
end
