require 'rspec/core/formatters/base_formatter'

class ZeldaFormatter < RSpec::Core::Formatters::BaseFormatter

  def close
    fork{ exec 'afplay', '../zelda.mp3' } unless failure_count > 0
  end

end