# frozen_string_literal: true

module Brasilis
  module Core
    module Factories
      # Message Factory
      class Message
        def build(data)
          Tropical::Amazonya::Tupan::Message
            .new(data[:content], data[:action])
        end
      end
    end
  end
end
