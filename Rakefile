require "bundler/gem_tasks"

desc "Create tag v#{Hookit::VERSION}"
task :tag do
  puts "tagging version v#{Hookit::VERSION}"
  `git tag -a v#{Hookit::VERSION} -m "Version #{Hookit::VERSION}"`
  `git push origin --tags`
end

desc "Build hookit-#{Hookit::VERSION} gem"
task :build do
  puts "building version #{Hookit::VERSION}"
  `gem build hookit.gemspec`
end

desc "Publish hookit-#{Hookit::VERSION} gem"
task :publish do
  puts "publishing hookit-#{Hookit::VERSION}.gem"
  `gem push pkg/hookit-#{Hookit::VERSION}.gem`
end
