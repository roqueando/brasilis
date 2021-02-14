# frozen_string_literal: true

require "digest"
require "securerandom"

module Brasilis
  module Tropical
    module Amazonya
      module Guarani
        # Guarani block
        class Block
          attr_reader(
            :index,
            :timestamp,
            :data,
            :previous_hash,
            :hash
          )
          attr_accessor :chain

          def initialize(data, previous_hash)
            @index = SecureRandom.uuid
            @timestamp = Time.now
            @data = data
            @previous_hash = previous_hash
            @hash = calc_hash
          end

          def calc_hash
            sha = Digest::SHA256.new
            sha.update(@index.to_s + @timestamp.to_s + @data + @previous_hash)
            sha.hexdigest
          end
        end
      end
    end
  end
end
