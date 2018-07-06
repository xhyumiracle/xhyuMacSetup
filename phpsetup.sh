xcode-select --install
brew install automake autoconf curl pcre bison re2c mhash libtool icu4c gettext jpeg openssl libxml2 mcrypt gmp libevent
brew link icu4c
brew link --force openssl
brew link --force libxml2

curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew

# Move phpbrew to somewhere can be found by your $PATH
sudo mv phpbrew /usr/local/bin/phpbrew

# add this line to .zshrc
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc


# install virtphp
wget https://github.com/virtphp/virtphp/releases/download/v0.5.2-alpha/virtphp.phar -O /usr/local/bin/virtphp.phar

chmod +x /usr/local/bin/virtphp.phar

virtphp.phar init

#virtphp.phar create php_env
#virtphp.phar show
