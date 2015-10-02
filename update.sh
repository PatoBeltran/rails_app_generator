echo "\033[0;34mUpgrading Rails Custom App Template\033][0m"
cd ~/.rails_generator_template
if git pull --rebase --stat origin master
then
  echo "\033[0;34m Done.\033[0m"
else
  echo "\033[0;34mSomething nasty happened. Try again late, it is probably a connection error\033][0m"
fi
