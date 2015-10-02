echo "\033[0;34mCloning Rails app template generator...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/PatoBeltran/rails_app_generator.git ~/.rails_generator_template || {
  echo "git not installed"
  exit
}

echo "\033[0;34mGenerating .railsrc file...\033][0m"
if [ -f ~/.railsrc ] || [ -h ~/.railsrc ]
then
  echo "\033[0;34mYou already have a .railsrc file.\033[0m \033[0;32mBacking up to ~/.railsrc.previous\033[0m"
  mv ~/.railsrc ~/.railsrc.previous;
fi

echo "\033[0;34mCopying the .railsrc template to ~/.railsrc\033[0m"
cp ~/.rails_generator_template/templates/railsrc_template ~/.railsrc

echo "\n\n \033[0;32mThanks for installing the custom rails app generator\033[0m"
                           
