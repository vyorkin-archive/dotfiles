require 'rake'
require 'fileutils'

require File.join(File.dirname(__FILE__), 'bin', 'vundle')

desc 'Install dotfiles'
task :install do
  platform_is_darwin = RUBY_PLATFORM.downcase.include?('darwin')

  submodule_init
  install_homebrew if platform_is_darwin
  install_rvm_binstubs

  dotfiles = %w(
    .dotfiles
    .aprc .bash_profile .bashrc .cabal .cheat .ctags .curlrc
    .gemrc .ghci .gitk .htoprc .irssi .profile .tmux .tmux.config .tmuxinator
    .vim .vimrc .zlogin .zlogout .zprofile .zshenv .zshrc .oh-my-zsh
  )

  puts 'symlinking dotfiles'
  dotfiles.each { |f| symlink(f) }

  Rake::Task['install_vundle'].execute

  if platform_is_darwin
    puts 'installing fonts'
    install_fonts
   #puts 'installing iterm themes'
   #install_iterm_themes
  end
end

private

def submodule_init
  puts 'initializing submodules'
  `git submodule update --init --recursive`
  puts
end

def install_homebrew
  `which brew`
  unless $?.success?
    puts 'installing homebrew'
    `ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"`
    puts
  else
    puts 'updating homebrew'
    `brew update`
    puts 'installing required homebrew packages'
    `brew install zsh ctags git hub tmux reattach-to-user-namespace the_silver_searcher`
    puts
  end
end

def install_rvm_binstubs
  puts 'installing rvm binstubs'
  # TODO: Fix this stuff
  #`chmod +x $rvm_path/hooks/after_cd_bundler`
end

def install_fonts
  puts 'installing fonts'
  `cp -f fonts/* $HOME/Library/Fonts`
  puts
end

def install_iterm_themes
  # TODO: Make sure all themes are supported
  if !File.exists?(File.join(ENV['HOME'], '/Library/Preferences/com.googlecode.iterm2.plist'))
    return
  end
end

def iterm_available_themes
  Dir['iterm/**/*.itermcolors'].map do |filename|
    File.basename(filename, '.itermcolors')
  end
end

def iterm_profile_list
  profiles = Array.new
  begin
    profiles << %x{ /usr/libexec/PlistBuddy -c "Print :'New Bookmarks':#{profiles.size}:Name" ~/Library/Preferences/com.googlecode.iterm2.plist 2>/dev/null}
  end while $?.exitstatus==0
  profiles.pop
  profiles
end

def iterm_add_and_merge(name, file)
  `/usr/libexec/PlistBuddy -c "Add :'Custom Color Presets':'#{name}' dict" ~/Library/Preferences/com.googlecode.iterm2.plist`
  `/usr/libexec/PlistBuddy -c "Merge '#{file}' :'Custom Color Presets':'#{name}'" ~/Library/Preferences/com.googlecode.iterm2.plist`
end

def install_oh_my_zsh
  symlink('oh-my-zsh', '.oh-my-zsh')
end

def symlink(source_file, target_file = nil)
  source = "#{ENV["PWD"]}/#{source_file}"
  target = "#{ENV["HOME"]}/#{target_file || source_file}"

  puts "source: #{source}, target: #{target}"

  if File.exists?(target) && (!File.symlink?(target) || File.readlink(target) != source)
    puts "[Backup] #{target} -> #{target}.backup"
    puts "[Overwriting] #{target}"
    `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"`
  end

  `ln -nfs "#{source}" "#{target}"`

  puts "[Ok]"
  puts
end

desc "Runs Vundle installer in a clean vim environment"
task :install_vundle do
  vundle_path = File.join('.vim','bundle', 'vundle')
  unless File.exists?(vundle_path)
    `
      cd $HOME
      git clone https://github.com/gmarik/vundle.git #{vundle_path}
    `
  end

  Vundle::update_vundle
end

task :default => 'install'
