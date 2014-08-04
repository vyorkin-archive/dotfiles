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
    run 'update_submodules', 'symlink:all'
    %w(vundle gems packages rvm_binstubs powerline_shell)
      .each { |t| run "install:#{t}" }

    set_zsh_as_default_shell
  end

  desc 'Install packages'
  task :packages do
    run "#{platform_name}:setup"
  end

  desc 'Install gems'
  task :gems do
    `gem i bundle`
    `bundle config --global jobs $(sysctl -n hw.ncpu)`

    gems = %w(
      gem-ctags ghi pry pry-remote pry-doc pry-git awesome_print sketches hirb
      hirb-unicode pry-stack_explorer coolline rubocop pry-coolline
      pry-rails pry-theme coderay pry-rescue gist jist interactive_editor
      foreman
    )

    `gem i gas gas_stats --backtrace`

    gems.each { |gem| `gem i #{gem} --backtrace` }

    `gem i pry-byebug -v 1.1.1`
    `gem i minitest-byebug`
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

  desc 'Install powerline-shell'
  task :powerline_shell do
    puts 'installing powerline shell'
    `cp -f powerline-shell/config.py.dist powerline-shell/config.py`
    `./powerline-shell/install.py`
    `ln -nfs "#{ENV["PWD"]}/powerline-shell/powerline-shell.py" "#{ENV["HOME"]}/powerline-shell.py"`
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
    # TODO: add the_silver_searher (see README in its repo)
    #`sudo apt-get update`
    #`sudo apt-get upgrade`
    `sudo apt-get install --fix-missing -y -qq zsh ctags tmux`
  end

  desc 'Install heroku toolbelt and plugins'
  task :install_heroku do
    `wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh`
    init_heroku
  end
end

namespace :darwin do
  desc 'Install mac os x package manager & usefull packages'
  task :setup do
    `which brew`
    run 'darwin:homebrew:install' unless $?.success?
    %w(update install_packages).each { |t| run "darwin:homebrew:#{t}" }
    %w(install_fonts install_iterm_themes).each { |t| run "darwin:#{t}" }
  end

  desc 'Install heroku toolbelt and plugins'
  task :install_heroku do
    `brew install heroku-toolbelt`
    init_heroku
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

      `brew tap phinze/cask`
      `brew install brew-cask`

      packages = %w(
        zsh ctags git hub tmux reattach-to-user-namespace
        the_silver_searcher fasd git-flow git-extras autoenv watch
        w3m links rbenv ruby-build
      )
      `brew install #{packages.join(' ')}`
      puts
    end
  end
end

namespace :symlink do
  desc 'Symlink all dotfiles'
  task :all do
    %w(
      bash ruby infrastructure git zsh tmux
      vim oh_my_zsh dotsecrets dotpryrc
      pryrc zsh_pure mutt
    ).each { |t| run "symlink:#{t}" }
  end

  desc 'Symlink bash dotfiles'
  task :bash do
    make_symlinks(%w(.profile .bash_profile .bashrc))
  end

  desc 'Symlink infrastructure dotfiles (htop, irssi, etc)'
  task :infrastructure do
    make_symlinks(%w(
      .dotfiles .aprc .cabal .cheat .ctags .kerlrc
      .curlrc .ghci .htoprc .irssi .slate .octave
    ))
  end

  desc 'Symlink ruby dotfiles'
  task :ruby do
    make_symlinks(%w(.gemrc .irbrc))
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
    `touch .secret_tokens`
    make_symlinks(%w(
      .zlogin .zlogout .zprofile .zshenv
      .zshrc .antigen .powerline-shell
      .antigen-bundler
    ))
  end

  desc 'Symlink tmux dotfiles'
  task :tmux do
    make_symlinks(%w(.tmux tmux-colors-solarized .tmux.config .tmuxinator))
  end

  desc 'Symlink mutt dotfiles'
  task :mutt do
    make_symlinks(%w(.muttrc .mailcap mutt-colors-solarized))
  end

  desc 'Symlink dotsecrets'
  task :dotsecrets do
    make_symlinks({'dotsecrets' => '.dotsecrets'})
  end

  desc 'Symlink vim dotfiles'
  task :vim do
    make_symlinks(%w(.vim .vimrc))
  end

  desc 'Symlink oh_my_zsh submodule'
  task :oh_my_zsh do
    make_symlinks('oh-my-zsh' => '.oh-my-zsh')
  end

  desc 'Symlink dotpryrc submodule'
  task :dotpryrc do
    make_symlinks({'dotpryrc' => '.dotpryrc'})
  end

  desc 'Symlink pryrc'
  task :pryrc do
    make_symlinks(%w(.pryrc))
  end

  desc 'Symlink zsh pure submodule'
  task :zsh_pure do
    `sudo chmod u=rwx,g=rwx,o=rwx -R /usr/local/share/zsh/site-functions/`
    `ln -nfs "#{ENV["PWD"]}/pure/pure.zsh" "/usr/local/share/zsh/site-functions/prompt_pure_setup"`
    `sudo chmod -R 755 /usr/local/share/zsh/site-functions`
  end
end

private

def platform_is_darwin?
  RUBY_PLATFORM.downcase.include?('darwin')
end

def platform_name
  platform_is_darwin? ? 'darwin' : 'linux'
end

def set_zsh_as_default_shell
  `chsh -s /bin/zsh`
end

def init_heroku
  `heroku login`
  `heroku plugins:install git://github.com/ddollar/heroku-config.git`
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
      puts "[Backing up] #{target} -> #{target}.backup"
      puts "[Overwriting] #{target}"
      `mv "#{target}" "#{target}.backup"`
    end

    `ln -nfs "#{source}" "#{target}"`

    puts "[Ok]"
    puts
  end
end

def run(*tasks)
  tasks.flatten.each { |t| Rake::Task[t].invoke }
end

task :default => 'install:all'
