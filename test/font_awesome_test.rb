require 'test_helper'
require 'pathname'

class FontAwesomeTest < ActionView::TestCase
  test ".gem_path should return the gems path" do
    assert_equal FontAwesome.gem_path, gem_path
  end

  test ".assets_path should return the path to gem assets" do
    assert_equal FontAwesome.assets_path, File.join(gem_path, 'assets')
  end

  test ".stylesheets_path should return the path to gem stylesheets" do
    assert_equal FontAwesome.stylesheets_path, File.join(gem_path, 'assets', 'stylesheets')
  end

  test ".fonts_path should return the path to gem fonts" do
    assert_equal FontAwesome.fonts_path, File.join(gem_path, 'assets', 'fonts')
  end

  private

  def gem_path
    @gempath ||= Pathname.new(File.expand_path(__FILE__)).parent.parent.to_s
  end
end
