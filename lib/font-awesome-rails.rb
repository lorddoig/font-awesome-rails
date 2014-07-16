require "font-awesome-rails/version"
require "font-awesome-rails/engine" if defined?(::Rails)

module FontAwesome
  class << self
    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def fonts_path
      File.join assets_path, 'fonts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end
  end
end
