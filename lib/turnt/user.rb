module Turnt
  class User
    def self.email
      GitUtils.global_config 'user.email'
    end

    def self.name
      GitUtils.global_config 'user.name'
    end

    def self.github
      GitUtils.global_config 'github.user'
    end
  end
end
