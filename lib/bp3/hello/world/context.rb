# frozen_string_literal: true

module Bp3
  module Hello
    module World
      # Context says it all
      class Context
        def self.say_it!
          "Hello World"
        end

        def say_it!
          self.class.say_it!
        end
      end
    end
  end
end
