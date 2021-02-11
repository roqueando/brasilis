# frozen_string_literal: true

module Brasilis
  # self Document
  module DOC
    # The document class
    class Document
      attr_reader :basic

      def initialize(basic)
        @basic = basic
      end
    end
  end
end
