# frozen_string_literal: true

require_relative "disable_int_format/version"

module SyntaxTree
  class Int
    def format(q)
      q.text(value)
    end
  end
end
