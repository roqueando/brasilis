# frozen_string_literal: true

module Brasilis
  # SEDEX you send and come
  class Sedex
    def self.send(*)
      puts Tropical::Ambiance.process.inspect
    end
  end
end
