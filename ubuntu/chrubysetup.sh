wget -O ruby-install-0.3.4.tar.gz https://github.com/postmodern/ruby-install/archive/v0.3.4.tar.gz
tar -xzvf ruby-install-0.3.4.tar.gz
cd ruby-install-0.3.4/
sudo make install


wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
tar -xzvf chruby-0.3.8.tar.gz
cd chruby-0.3.8/
sudo make install


echo "source /usr/local/share/chruby/chruby.sh" >> ~/.bashrc
echo "source /usr/local/share/chruby/auto.sh" >> ~/.bashrc

chruby ruby-2.1.0
