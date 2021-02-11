# frozen_string_literal: true

module Brasilis
  module Core
    module Factories
      # Document Factory
      class Document
        def build(data)
          basic = Brasilis::DOC::Basic.new(
            data[:name],
            filiation(data[:father], data[:mother]),
            data[:naturality],
            data[:birth]
          )
          Brasilis::DOC::Document.new(basic)
        end

        private

        def filiation(father, mother)
          Brasilis::DOC::Filiation.new(father, mother)
        end
      end
    end
  end
end
