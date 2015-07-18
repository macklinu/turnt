require 'git'

module Turn
  class User
    def email
      Git.global_config 'user.email'
    end

    def name
      Git.global_config 'user.name'
    end

    def github
      Git.global_config 'github.user'
    end
  end
end
