# frozen_string_literal: true

require "i18n"
I18n.load_path += Dir["#{File.expand_path("config/locales")}/*.yml"]

require_relative "world/context"
require_relative "world/version"

module Bp3
  module Hello
    module World
      class Error < StandardError; end
    end
  end
end
