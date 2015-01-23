require 'rspec/core/formatters/base_formatter'

class ZeldaFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def initialize(output)
    @output = output
  end

  def dump_summary(notification)
    test = File.expand_path(File.dirname(__FILE__))
    fork{ exec 'afplay', File.expand_path(File.dirname(__FILE__)) + '/../sound/zelda.mp3' } unless notification.failed_examples.count > 0
  end
end