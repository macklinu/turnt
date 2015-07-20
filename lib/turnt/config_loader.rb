require 'yaml'

module Turnt
  class ConfigLoader
    CONFIG_FILE_NAME = '.pairs.yaml'

    def load
      File.open(config_path) { |file| YAML.load file }
    end

    private

    def config_path
      "#{Turn::GitUtils.current_git_directory}/#{CONFIG_FILE_NAME}"
    end
  end
end
