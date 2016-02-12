require 'trello'
require 'colorize'
require 'byebug'

require_relative 'scrum_lint/configuration'
require_relative 'scrum_lint/runner'

class ScrumLint

  def self.config
    @config ||= ScrumLint::Configuration.new
  end

end