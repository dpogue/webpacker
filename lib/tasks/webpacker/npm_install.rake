namespace :webpacker do
  desc "Support for older Rails versions. Install all JavaScript dependencies as specified via npm"
  task :npm_install, [:arg1, :arg2] do |task, args|
    system "npm #{args[:arg1] || 'install'} #{args[:arg2]}"
  end
end
