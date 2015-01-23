require 'rake'

desc "Install all dotfiles in the system"
task :install do
  ARGV.clear

  symlinks = Dir.glob('*/*.symlink')

  symlinks.each do |s|
    symlink = ".#{s.split('/').last.split('.symlink').first}"
    target = File.join(ENV['HOME'], symlink)
    source = File.join(File.dirname(__FILE__), s)

    if File.exists?(target)
      puts "File #{symlink} already exists in #{ENV['HOME']}."
      puts "Do you want to overwrite? y/n"
      next unless gets.chomp =~ /^y/i

      `mv #{target} #{target}.bak`
      puts "File #{symlink} was backed up to #{symlink}.bak."
    end

    `ln -s #{source} #{target}`
    puts "File was #{symlink} installed.\n\n"
  end
end
