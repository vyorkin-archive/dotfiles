require 'rake'
require 'fileutils'

require File.join(File.dirname(__FILE__), 'bin', 'vundle')

desc 'Install dotfiles'
task :install do
  submodule_init
  install_homebrew if RUBY_PLATFORM.downcase.include?('darwin')
  install_rvm_binstubs

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
end

def install_fonts
  puts 'installing fonts'
  `cp -f fonts/* $HOME/Library/Fonts`
  puts
end

def install_iterm_themes
end

def install_oh_my_zsh
end
