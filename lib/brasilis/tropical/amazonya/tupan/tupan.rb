# frozen_string_literal: true

require "socket"

module Brasilis
  module Tropical
    module Amazonya
      # Native brazilian messenger
      module Tupan
        class << self
          ACTIONS = %w[letter down].freeze
          def self.send(message: Message, who: String)
            client = TCPSocket.open("localhost", 8000)
            letter = {
              message: message,
              who: who
            }
            client.puts letter
            client.close
          end
        end
      end
    end
  end
end
