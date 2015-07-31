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

    # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
    def up
      pairs = Turnt::ConfigLoader.new
      pair = pairs.get_pair(options.with)
      if pair
        driver = Turnt::User.as_pair
        navigator = Turnt::Pair.new pair
        name = "#{driver.name} + #{navigator.name}"
        # rubocop:disable Metrics/LineLength
        email = "#{driver.email_local}+#{navigator.email_local}@#{driver.email_domain}"
        # rubocop:enable Metrics/LineLength
        Turnt::Authorship.set name, email
      else
        say 'WRONG'
        exit(2)
      end
    end
    # rubocop:enable Metrics/AbcSize, Metrics/MethodLength

    desc 'down', 'Stop pairing'
    option :for_what,
           type: :boolean,
           desc: 'turn down for what!',
           hide: true

    def down
      if options.for_what
        filepath = "#{File.dirname(File.dirname(__FILE__))}/static/td4w.mp3"
        fork { exec 'afplay', filepath }
      end
      Turnt::Authorship.unset
    end
  end
end
