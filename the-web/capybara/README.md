## Learn Capybara

[Capybara Link](https://capybara-workout.herokuapp.com/)

1. Install PRY

`gem install pry pry-doc`

2. Create a Gemfile and add the gems required

`bundle init`

<!-- Writing new Gemfile to /Users/deliabute/Projects/makers-dir/the-web/capybara/Gemfile -->

`gem 'pry' gem 'capybara' gem 'selenium-webdriver'`

3. Run pry in the terminal
   `➜ capybara git:(main) ✗`pry
   [1] pry(main)> require 'capybara'
   => true
   [2] pry(main)> require 'selenium-webdriver'
   => true
   [3] pry(main)> require 'capybara/dsl'
   => true
   [4] pry(main)> include Capybara::DSL
   including Capybara::DSL in the global scope is not recommended!
   => Object
   [5] pry(main)> Capybara.default_driver = :selenium
   => :selenium
   [6] pry(main)> visit 'http://capybara-workout.herokuapp.com'
   Selenium::WebDriver::Error::WebDriverError: Could not find Firefox binary (os=macosx). Make sure Firefox is installed or set the path manually with Selenium::WebDriver::Firefox::Binary.path=`

4. Install firefox fo fix the error above

[Firefox dowload link](https://www.mozilla.org/en-GB/firefox/download/)

5. Run pry again
   `➜ capybara git:(main) ✗`pry
   [1] pry(main)> require 'capybara'
   => true
   [2] pry(main)> require 'selenium-webdriver'
   => true
   [3] pry(main)> require 'capybara/dsl'
   => true
   [4] pry(main)> include Capybara::DSL
   including Capybara::DSL in the global scope is not recommended!
   => Object
   [5] pry(main)> Capybara.default_driver = :selenium
   => :selenium
   [6] pry(main)> visit 'http://capybara-workout.herokuapp.com
   [7] pry(main)> visit 'http://capybara-workout.herokuapp.com'
   Selenium::WebDriver::Error::WebDriverError: Unable to find Mozilla geckodriver. Please download the server from
   https://github.com/mozilla/geckodriver/releases and place it somewhere on your PATH.
   More info at https://developer.mozilla.org/en-US/docs/Mozilla/QA/Marionette/WebDriver.`

➜ capybara git:(main) ✗ bundle install  
Fetching gem metadata from https://rubygems.org/.......
Could not find gem 'selenium_chrome' in rubygems repository https://rubygems.org/ or installed locally.
➜ capybara git:(main) ✗ -rvm update  
zsh: command not found: -rvm
➜ capybara git:(main) ✗ rvm update
ERROR: rvm update has been removed. Try 'rvm get head' or see the 'rvm get' and rvm 'rubygems' CLI API instead
➜ capybara git:(main) ✗ ruby -v
ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [arm64-darwin20]
➜ capybara git:(main) ✗ brew update
Updated 1 tap (homebrew/core).
==> New Formulae
k2tf libnghttp2 lilypond python-tk@3.10 python@3.10
==> Updated Formulae
nghttp2 ✔ coffeescript gdal knot-resolver poetry tanka watchman
node ✔ commandbox getdns markdownlint-cli poppler-qt5 tbb webpack
alda composer git maven pybind11 tctl wireshark
bnd curl gnuradio mdbook pyright terrahelp xkeyboardconfig
buildkit deno httpd minio redis theharvester
buildpulse-test-reporter dnsperf influxdb-cli netlify-cli rust-analyzer twarc
calicoctl docker jetty opa serverless uhd
cbmc erlang jfrog-cli openexr srt unbound
cdktf fizz julia php-cs-fixer swiftformat vale
chezmoi folly knot pnpm swiftgen wangle

You have 3 outdated formulae installed.
You can upgrade them with brew upgrade
or list them with brew outdated.
➜ capybara git:(main) ✗ brew doctor
Please note that these warnings are just used to help the Homebrew maintainers
with debugging if you file an issue. If everything you use Homebrew for is
working fine: please don't worry or file an issue; just ignore this. Thanks!

Warning: A newer Command Line Tools release is available.
Update them from Software Update in System Preferences or run:
softwareupdate --all --install --force

If that doesn't show you any updates, run:
sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install

Alternatively, manually download them from:
https://developer.apple.com/download/more/.
You should download the Command Line Tools for Xcode 13.0.

Warning: /usr/bin occurs before /opt/homebrew/bin in your PATH.
This means that system-provided programs will be used instead of those
provided by Homebrew. Consider setting your PATH so that
/opt/homebrew/bin occurs before /usr/bin. Here is a one-liner:
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc

The following tools exist at both paths:
python3
pip3
➜ capybara git:(main) ✗ gem install geckodriver-helper  
Fetching io-like-0.3.1.gem
Fetching archive-zip-0.12.0.gem
Fetching geckodriver-helper-0.24.0.gem
Successfully installed io-like-0.3.1
Successfully installed archive-zip-0.12.0
Successfully installed geckodriver-helper-0.24.0
Parsing documentation for io-like-0.3.1
Installing ri documentation for io-like-0.3.1
Parsing documentation for archive-zip-0.12.0
Installing ri documentation for archive-zip-0.12.0
Parsing documentation for geckodriver-helper-0.24.0
Installing ri documentation for geckodriver-helper-0.24.0
Done installing documentation for io-like, archive-zip, geckodriver-helper after 0 seconds
3 gems installed
➜ capybara git:(main) ✗ bundle install
Fetching gem metadata from https://rubygems.org/.......
Resolving dependencies...
Using public_suffix 4.0.6
Using io-like 0.3.1
Using bundler 2.2.28
Using mini_mime 1.1.1
Using racc 1.5.2
Using rack 2.2.3
Using regexp_parser 2.1.1
Using childprocess 3.0.0
Using coderay 1.1.3
Using method_source 1.0.0
Using rubyzip 2.3.2
Using nokogiri 1.12.5 (arm64-darwin)
Using xpath 3.2.0
Using pry 0.14.1
Using addressable 2.8.0
Using archive-zip 0.12.0
Using geckodriver-helper 0.24.0
Using rack-test 1.1.0
Using capybara 3.35.3
Using selenium-webdriver 3.142.7
Bundle complete! 4 Gemfile dependencies, 20 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
➜ capybara git:(main) ✗ rspec --init
create .rspec
create spec/spec_helper.rb
➜ capybara git:(main) ✗ pry  
[1] pry(main)> require 'capybara'
=> true
[2] pry(main)> require 'selenium-webdriver'
=> true
[3] pry(main)> require 'capybara/dsl'
=> true
[4] pry(main)> include Capybara::DSL
including Capybara::DSL in the global scope is not recommended!
=> Object
[5] pry(main)> Capybara.default_driver = :selenium
=> :selenium
[6] pry(main)> visit 'http://capybara-workout.herokuapp.com'
=> nil
[7] pry(main)> click_link 'Start Workout'
=> Obsolete #<Capybara::Node::Element>
[8] pry(main)>
