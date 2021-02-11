# frozen_string_literal: true

# Brasilis banner
module Brasilis
  # Utility class for brasilis
  class Utils
    def self.banner
      font = TTY::Font.new(:starwars)
      puts font.write("brasilis")
      puts "Welcome to brasilis system!"
    end
  end
end
