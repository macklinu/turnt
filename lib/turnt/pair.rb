module Turnt
  class Pair
    attr_reader :name, :email, :github

    def initialize(hash)
      @name = hash[:name]
      @email = hash[:email]
      @github = hash[:github]
    end
  end
end
