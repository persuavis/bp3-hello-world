# frozen_string_literal: true

require 'i18n'
load_dir = File.expand_path("#{File.dirname(__FILE__)}/../../../config/locales")
I18n.load_path += Dir.glob("#{load_dir}/*.{rb,yml}")

require_relative 'world/context'
require_relative 'world/version'

module Bp3
  module Hello
    module World
      class Error < StandardError; end
    end
  end
end
