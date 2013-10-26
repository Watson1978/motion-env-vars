unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  app.files.unshift(Dir.glob(File.join(lib_dir_path, "project/**/*.rb")))
end

require 'yaml'
require 'plist'

class Motion::Project::Config
  variable :env_vars

  def env_vars=(path_or_hash)
    path_plist = File.join(self.resources_dirs.first, 'env-vars.plist')
    FileUtils.rm_rf(path_plist) if File.exist?(path_plist)

    if path_or_hash.is_a?(Hash)
      env_vars = path_or_hash
    else
      env_vars = YAML.load(File.open(File.expand_path(path_or_hash)).read)
    end

    File.open(path_plist, "w") do |f|
      f.write env_vars.to_plist
    end
    system "plutil -convert binary1 '#{path_plist}'"
  end
end
