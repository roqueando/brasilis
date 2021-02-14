# frozen_string_literal: true

module Brasilis
  module Tropical
    module Amazonya
      module Guarani
        # Guarani process
        class Process
          attr_accessor :blocks

          def initialize
            @blocks = []
            init.send @blocks
          end

          def first(data = "In terris visus")
            @blocks << Block.new(data, "0")
            init.send @blocks
          end

          def next(data)
            previous = @blocks.last
            @blocks.push(Block.new(data, previous.hash))
            init.send @blocks
          end

          def init
            Ractor.new(name: "guarani") do
              state = Ractor.receive
            end
          end
        end
      end
    end
  end
end
