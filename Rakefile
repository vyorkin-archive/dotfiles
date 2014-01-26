require 'rake'
require 'fileutils'

require File.join(File.dirname(__FILE__), 'bin', 'vundle')

desc 'Update/initialize submodules'
task :update_submodules do
  puts 'initializing submodules'
  `git submodule update --init --recursive`
  puts
end

namespace :install do
  desc 'Install all'
  task :all do
    Rake::Task['update_submodules'].invoke
    Rake::Task['symlink:all'].invoke
    %w(vundle gems packages rvm_binstubs).each do |t|
      Rake::Task["install:#{t}"].invoke
    end

    set_zsh_as_default_shell
  end

  desc 'Install packages'
  task :packages do
    task_name = platform_is_darwin? ? 'darwin:setup' : 'linux:setup'
    Rake::Task[task_name].invoke
  end

  desc 'Install gems'
  task :gems do
    gems = %w(
      ghi pry pry-debugger pry-nav debugger pry-remote pry-doc
      pry-git awesome_print sketches
      hirb hirb-unicode pry-stack_explorer
      pry-rails pry-theme coolline coderay jazz_hands
    )
    `gem install #{gems.join(' ')}`
  end

  desc 'Runs Vundle installer in a clean vim environment'
  task :vundle do
    vundle_path = File.join('.vim', 'bundle', 'vundle')
    unless File.exists?(vundle_path)
      `
        cd $HOME
        git clone https://github.com/gmarik/vundle.git #{vundle_path}
      `
    end

    Vundle::update_vundle
  end

  desc 'Install rvm binstubs'
  task :rvm_binstubs do
    puts 'installing rvm binstubs'
    # TODO: Fix this stuff
    #`chmod +x $rvm_path/hooks/after_cd_bundler`
  end
end

namespace :linux do
  desc 'Install linux usefull packages'
  task :setup do
    # TODO: add silver_searher (see README in its repo)
    #`sudo apt-get update`
    #`sudo apt-get upgrade`
    `sudo apt-get install --fix-missing -y -qq zsh ctags tmux`
  end
end

namespace :darwin do
  desc 'Install mac os x package manager & usefull packages'
  task :setup do
    `which brew`
    Rake::Task['darwin:homebrew:install'].invoke unless $?.success?
    %w(update install_packages).each do |t|
      Rake::Task["darwin:homebrew:#{t}"].invoke
    end
    %w(install_fonts install_iterm_themes).each do |t|
      Rake::Task["darwin:#{t}"].invoke
    end
  end

  desc 'Install custom fonts for mac os x'
  task :install_fonts do
    puts 'installing fonts'
    `cp -f fonts/* $HOME/Library/Fonts`
    puts
  end

  desc 'Install additional iterm themes for mac os x'
  task :install_iterm_themes do
    puts 'installing iterm themes'
    # TODO: Make sure all themes are supported
    if !File.exists?(File.join(ENV['HOME'], '/Library/Preferences/com.googlecode.iterm2.plist'))
      return
    end
  end

  namespace :homebrew do
    desc 'Install homebrew'
    task :install do
      puts 'installing homebrew'
      `ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"`
      puts
    end

    desc 'Update homebrew'
    task :update do
      puts 'updating homebrew'
      `brew update`
      puts
    end

    desc 'Install packages'
    task :install_packages do
      puts 'installing required homebrew packages'
      `brew install zsh ctags git hub tmux reattach-to-user-namespace the_silver_searcher fasd`
      puts
    end
  end
end

namespace :symlink do
  desc 'Symlink all dotfiles'
  task :all do
    %w(
      bash infrastructure git zsh tmux
      vim oh_my_zsh dotpryrc zsh_pure
    ).each do |t|
      Rake::Task["symlink:#{t}"].invoke
    end
  end

  desc 'Symlink bash dotfiles'
  task :bash do
    make_symlinks(%w(.profile .bash_profile .bashrc))
  end

  desc 'Symlink infrastructure dotfiles (htop, irssi, etc)'
  task :infrastructure do
    make_symlinks(%w(
      .dotfiles .aprc .cabal .cheat .ctags
      .curlrc .gemrc .ghci .htoprc .irssi
    ))
  end

  desc 'Symlink git dotfiles'
  task :git do
    make_symlinks({
      '.gitconfig' => '.gitconfig',
      'gitignore'  => '.gitignore',
      '.gitk'      => '.gitk'
    })
  end

  desc 'Symlink zsh dotfiles'
  task :zsh do
    make_symlinks(%w(.zlogin .zlogout .zprofile .zshenv .zshrc))
  end

  desc 'Symlink tmux dotfiles'
  task :tmux do
    make_symlinks(%w(.tmux .tmux.config .tmuxinator))
  end

  desc 'Symlink vim dotfiles'
  task :vim do
    make_symlinks(%w(.vim .vimrc))
  end

  desc 'Symlink oh_my_zsh submodule'
  task :oh_my_zsh do
    make_symlinks({'oh-my-zsh' => '.oh-my-zsh'})
  end

  desc 'Symlink dotpryrc submodule'
  task :dotpryrc do
    make_symlinks({
      'dotpryrc/.pryrc' => '.pryrc',
      'dotpryrc/.pryrc-helpers.rb' => '.pryrc-helpers.rb'
    })
  end

  desc 'Symlink zsh pure submodule'
  task :zsh_pure do
    `ln -nfs "#{ENV["PWD"]}/pure/pure.zsh" "/usr/local/share/zsh/site-functions/prompt_pure_setup"`
  end
end

private

def platform_is_darwin?
  RUBY_PLATFORM.downcase.include?('darwin')
end

def set_zsh_as_default_shell
  `chsh -s /bin/zsh`
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

def make_symlinks(map)
  puts 'symlinking:'
  puts map.inspect
  puts

  map.each do |source_file, target_file|
    puts "source file: #{source_file}"
    puts "target file: #{target_file}"

    source = "#{ENV["PWD"]}/#{source_file}"
    target = "#{ENV["HOME"]}/#{target_file || source_file}"

    puts "source: #{source}, target: #{target}"

    if File.exists?(target) && (!File.symlink?(target) || File.readlink(target) != source)
      puts "[Backup] #{target} -> #{target}.backup"
      puts "[Overwriting] #{target}"
      `mv "#{target}" "#{target}.backup"`
    end

    `ln -nfs "#{source}" "#{target}"`

    puts "[Ok]"
    puts
  end
end

task :default => 'install:all'
