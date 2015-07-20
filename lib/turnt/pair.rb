module Turnt
  class Pair
    attr_reader :name, :email, :github

    def initialize(hash)
      @name = hash[:name]
      @email = hash[:email]
      @github = hash[:github]
    end

    def email_local
      @email.split('@')[0]
    end

    def email_domain
      @email.split('@')[1]
    end
  end
end
