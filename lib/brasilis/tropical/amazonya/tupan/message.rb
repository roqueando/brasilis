# frozen_string_literal: true

module Brasilis
  module Tropical
    module Amazonya
      module Tupan
        # Tupan message
        class Message
          def initialize(content:, action: String)
            @content = content
            @action = validate(action)
          end

          private

          # @return String
          def validate(action)
            raise StandardError unless Tupan::ACTIONS.include? action

            action
          end
        end
      end
    end
  end
end
