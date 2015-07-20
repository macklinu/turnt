require 'yaml'

module Turnt
  class ConfigLoader
    CONFIG_FILE_NAME = '.pairs.yaml'

    def initialize
      @pairs = load_yaml
    end

    def get_pair(github_name)
      @pairs.detect { |pair| pair[:github] == github_name }
    end

    private

    def load_yaml
      File.open(config_path) { |file| YAML.load(file)[:pairs] }
    end

    def config_path
      "#{Turnt::GitUtils.current_git_directory}/#{CONFIG_FILE_NAME}"
    end
  end
end
