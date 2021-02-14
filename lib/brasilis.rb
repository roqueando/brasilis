# frozen_string_literal: true

require "brasilis/version"
require_relative "../config/environment"
Dir["#{File.dirname(__FILE__)}/brasilis/**/*.rb"].each { |file| require file }

# Brasilis
module Brasilis
  def self.init
    Tropical.init
    Tropical::Amazonya::Guarani::Process.new
    system "clear"
    Brasilis::Utils.banner
    Brasilis::Interface::Choices.new.run
  end
end
