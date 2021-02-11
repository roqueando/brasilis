# frozen_string_literal: true

module Brasilis
  module Interface
    # Interface choices
    class Choices
      def run
        result = PROMPT.select("Choose an option", options)
        handle_choice result
      end

      private

      def options
        [
          { value: "b_doc", name: "Register your b-doc" },
          { value: "wallet", name: "Check your wallet" },
          { value: "connect", name: "Connect and send things to other peoples" }
        ]
      end

      def handle_choice(result)
        case result
        when "b_doc"
          Screens::BDoc.new.run
        when "wallet"
          puts "Lets see the wallet"
        when "connect"
          puts "Let connect with your friends"
        else
          puts "Choose the right option"
        end
      end
    end
  end
end
