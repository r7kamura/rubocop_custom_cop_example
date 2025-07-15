# frozen_string_literal: true

require 'rubocop'

module RuboCop
  module Cop
    module Foo
      # Use `foo` instead of `bar`.
      #
      # @example
      #   # bad
      #   bar
      #
      #   # good
      #   foo
      class Bar < Base
        extend AutoCorrector

        MSG = 'Use `foo` instead of `bar`.'

        RESTRICT_ON_SEND = %i[bar].freeze

        def on_send(node)
          add_offense(node) do |corrector|
            corrector.replace(node, 'foo')
          end
        end
      end
    end
  end
end
