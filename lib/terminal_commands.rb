# frozen_string_literal: true

require_relative "terminal_commands/version"

module TerminalCommands
  def self.open_file_or_link(file_or_link, options = {})
    command = if macosx?
      "open"
    elsif linux?
      "xdg-open"
    end
    `#{command} #{file_or_link}`
  end

  def self.open_folder(path_name, options = {})
    command = if macosx?
      "open"
    elsif linux?
      "nautilus"
    end
    `#{command} #{path_name}`
  end

  private

  def self.os
    Gem::Platform.local.os
  end

  def self.macosx?
    os == macosx
  end

  def self.linux?
    os == linux
  end

  def self.macosx
    "darwin"
  end

  def self.linux
    "linux"
  end

  class Error < StandardError; end
end
