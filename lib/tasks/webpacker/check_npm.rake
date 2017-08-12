namespace :webpacker do
  desc "Verifies if npm is installed"
  task :check_npm do
      required_npm_version = "5.0.0"

    begin
      npm_version = `npm --version`

      raise Errno::ENOENT if npm_version.blank? || Gem::Version.new(npm_version) < Gem::Version.new(required_npm_version)
    rescue Errno::ENOENT
      $stderr.puts "Webpacker requires npm version >= #{required_npm_version}. Please download and install the latest version from https://www.npmjs.com/get-npm"
      $stderr.puts "Exiting!" && exit!
    end
  end
end
