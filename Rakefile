require 'lib/yahoo-stock'
require "rake/clean"
require "rake/gempackagetask"
 
spec = Gem::Specification.new do |s|
  s.name = "yahoo-stock"
  s.version = Yahoo::Stock::VERSION
  s.author = "Ben Schwarz"
  s.email = "ben@sct.com.au"
  s.homepage = "http://www.sct.com.au/"
  s.platform = Gem::Platform::RUBY
  s.summary = "A Yahoo! stocks scraper"
  s.files = FileList["{bin,lib}/**/*"].to_a
  s.require_path = "lib"
  s.autorequire = "yahoo-stock"
  s.add_dependency("hpricot", ">= 0.6")
end
 
Rake::GemPackageTask.new(spec) do |package|
  package.gem_spec = spec
end
 
# Things that we don't want in our package
CLEAN.include ["**/.*.sw?", "pkg", "lib/*.bundle", "*.gem"]
 
# Windows install support
windows = (PLATFORM =~ /win32|cygwin/) rescue nil
SUDO = windows ? "" : "sudo"
 
desc "Install yahoo-stock"
task :install => [:package] do
  sh %{#{SUDO} gem install --local pkg/yahoo-stock-#{Yahoo::Stock::VERSION}.gem}
end