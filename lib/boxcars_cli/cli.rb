# frozen_string_literal: true

require 'thor'

module BoxcarsCli
  # Handle the application command line parsing
  # and the dispatch to various command objects
  #
  # @api public
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'boxcars_cli version'
    def version
      require_relative 'version'
      puts "v#{BoxcarsCli::VERSION}"
    end
    map %w(--version -v) => :version

    desc 'list', 'List all available boxcars to use in a train.'
    def list

    end
    map %w(--list -l) => :list
  end
end
