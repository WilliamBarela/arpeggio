require "arpeggio/version"

module Arpeggio
  class Error < StandardError; end

  class << self
    def about
      puts 'Arpeggio is a Ruby gem to help you learn intervals and scales.'
    end
  end
end
