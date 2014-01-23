module PryrcHelpers
  extend self

  ## Add color to terminal text.
  # \033 is 100% POSIX compatible. Use \e is also fine.
  # http://www.termsys.demon.co.uk/vtansi.htm
  # Foreground Colours
  #   30  Black
  #   31  Red
  #   32  Green
  #   33  Yellow
  #   34  Blue
  #   35  Magenta
  #   36  Cyan
  #   37  White
  def colorize(text, color_code)
    "\033[#{color_code}m#{text}\033[0m"
  end

end

if defined? AwesomePrint
  AwesomePrint.pry!

  Pry.config.print = proc do |output, value|
    Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai(indent: 2)}", output)
  end
end

if defined? Minitest
  module Minitest::Assertions
    def mu_pp(obj)
      obj.awesome_inspect if obj.respond_to?(:awesome_inspect)
    end
  end
end

# Launch Pry with access to the entire Rails stack.
rails = File.join(Dir.getwd, 'config', 'environment.rb')
if File.exist?(rails) && ENV['RAILS']
  require rails
  case Rails.version.to_i
  when 2
    require 'console_app'
    require 'console_with_helpers'
  when 3
    require 'rails/console/app'
    require 'rails/console/helpers'
    extend Rails::ConsoleMethods if Rails.version.to_f >= 3.2
  else
    warn '[WARN] cannot load Rails console commands'
  end
end

Pry.config.history.file = "~/.irb_history"
Pry.config.editor = "vim"
Pry.config.theme = 'tomorrow-night'

Pry.config.prompt = proc do |obj, level, _|
  prompt = ""
  prompt << "AWS@" if defined?(AWS)
  prompt << "#{Rails.version}@" if defined?(Rails)
  prompt << "#{RUBY_VERSION}"
  "#{prompt} (#{obj})> "
end

# Exception
Pry.config.exception_handler = proc do |output, exception, _|
  puts PryrcHelpers.colorize "#{exception.class}: #{exception.message}", 31
  puts PryrcHelpers.colorize "from #{exception.backtrace.first}", 31
end

if defined? PryNav || defined? PryDebugger
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
end

Pry.commands.alias_command 'f', 'finish' if defined? PryDebugger

Pry.commands.alias_command 'w', 'whereami'
Pry.commands.alias_command '.clr', '.clear'

alias :r :require
alias :l :load

if RUBY_PLATFORM =~ /darwin/i # OSX only.
  # The pbcopy manual page for Mac OS X
  # http://goo.gl/o3nGsr
  def pbcopy(str, opts = {})
    IO.popen('pbcopy', 'r+') { |io| io.print str }
  end

  Pry.config.commands.command "pbcopy", "Copy last returned object to clipboard, -m for multiline copy" do

    multiline = arg_string == '-m'
    pbcopy _pry_.last_result.ai(:plain => true,
                                :indent => 2,
                                :index => false,
                                :multiline => multiline)
    output.puts "Copied #{multiline ? 'multilined' : ''}!"
  end

  Pry.config.commands.alias_command 'cp', 'pbcopy'
end
