require 'fileutils'

module Turnt
  class PreCommitHook
    HOOK_NAME = 'post-commit'

    def self.install
      FileUtils.cd git_hook_directory do
        FileUtils.rm HOOK_NAME, force: true
        File.open(HOOK_NAME, 'w') do |file|
          file.puts '#!/usr/bin/env bash'
          file.puts
          file.puts 'git commit --amend --no-edit'
        end
      end
    end

    def self.uninstall
      FileUtils.rm "#{git_hook_directory}/#{HOOK_NAME}", force: true
    end

    def self.git_hook_directory
      "#{Turn::GitUtils.current_git_directory}/.git/hooks"
    end

    private_class_method :git_hook_directory
  end
end
