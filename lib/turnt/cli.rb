require 'thor'

module Turnt
  class CLI < Thor
    desc 'up', 'Start pairing'
    option :with,
           required: true,
           type: :string,
           aliases: '-w',
           banner: 'GITHUB_USER',
           desc: 'the GitHub username of a pair defined in .pairs.yaml'

    def up
      pairs = Turnt::ConfigLoader.new
      pair = pairs.get_pair(options.with)
      if pair
        driver = Turnt::User.as_pair
        navigator = Turnt::Pair.new pair
        name = "#{driver.name} + #{navigator.name}"
        email = "#{driver.email_local}+#{navigator.email_local}@#{driver.email_domain}"
        Turnt::Authorship.set name, email
      else
        say 'WRONG'
        exit(2)
      end
    end

    desc 'down', 'Stop pairing'
    option :for_what,
           type: :boolean,
           desc: 'turn down for what!',
           hide: true

    def down
      if options.for_what
        fork {
          filepath = "#{File.dirname(File.dirname(__FILE__))}/static/td4w.mp3"
          exec 'afplay', filepath
        }
      end
      Turnt::Authorship.unset
    end
  end
end
