require 'fileutils'
require 'git'

module Turnt
  class Authorship
    def self.set(name, email)
      git = Git.open Turnt::GitUtils.current_git_directory
      git.config('user.name', name)
      git.config('user.email', email)
    end

    def self.unset
      git = Git.open Turnt::GitUtils.current_git_directory
      git.config('user.name', Git.global_config('user.name'))
      git.config('user.email', Git.global_config('user.email'))
    end
  end
end
