module Turnt
  class GitUtils
    def self.global_config(property)
      `git config --global --get #{property}`.strip
    end

    def self.current_git_directory
      `git rev-parse --show-toplevel`.strip
    end
  end
end
