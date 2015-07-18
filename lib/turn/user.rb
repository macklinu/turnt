require 'git'

module Turn
  class User
    def self.email
      Git.global_config 'user.email'
    end

    def self.name
      Git.global_config 'user.name'
    end

    def self.github
      Git.global_config 'github.user'
    end
  end
end
