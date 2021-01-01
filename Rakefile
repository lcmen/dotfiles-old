require "rake"

desc "Install all dotfiles in the system"
task :install do
  ARGV.clear

  symlinks = Dir.glob("*/*.symlink")
  targets = { "init.vim": "~/.config/nvim/init.vim" }

  symlinks.each do |s|
    name = s.split("/").last.gsub(/\.symlink$/, "")
    symlink = ".#{name}"
    target = targets.fetch(name) { File.join(ENV["HOME"], symlink) }
    source = File.join(File.dirname(__FILE__), s)

    if File.exist?(target)
      puts "File #{symlink} already exists (#{target})."
      puts "Do you want to overwrite? y/n"
      next unless gets.chomp =~ /^y/i

      `mv #{target} #{target}.bak`
      puts "File #{symlink} was backed up to #{symlink}.bak."
    end

    `ln -s #{source} #{target}`
    puts "File #{symlink} was installed.\n\n"
  end
end

task default: :install
