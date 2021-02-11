# frozen_string_literal: true

module Brasilis
  # Tropical ambient
  module Tropical
    def self.init
      Ambiance
        .new
        .run
    end
  end
end
