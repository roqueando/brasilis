# frozen_string_literal: true

require "bundler"
Bundler.require

Dir["#{File.dirname(__FILE__)}/lib/**/*.rb"].each { |file| require file }

PROMPT = TTY::Prompt.new

