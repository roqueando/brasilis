# frozen_string_literal: true

require "socket"

module Brasilis
  module Tropical
    # Ambiance will upload
    # an resource like a server
    # or tasks
    # Default port: 8000
    class Ambiance
      # @param String name Supervisor name
      # @attr Array resources
      def initialize(name = "amazonya")
        @name = name
        @resources = []
        @port = 8000
        @count = 4
      end

      def run
        pipe.send @port
      end

      private

      def pipe
        Ractor.new(name: @name) do
          port = Ractor.receive
          serv = TCPServer.new port
          loop do
            serv.accept
          end
        end
      end
    end
  end
end
