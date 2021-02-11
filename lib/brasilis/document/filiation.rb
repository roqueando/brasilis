# frozen_string_literal: true

module Brasilis
  module DOC
    # Filiation information for DOC
    class Filiation
      attr_reader :father_name, :mother_name

      def initialize(father_name, mother_name)
        @father_name = father_name
        @mother_name = mother_name
      end
    end
  end
end
