sudo yum install -y deltarpm # download only differences with older versions
# of already installed packages
sudo yum update

echo 'Postgres'
sudo yum install -y postgresql-server postgresql-contrib postgresql-devel
sudo postgresql-setup initdb
sudo systemctl start postgresql
sudo systemctl enable postgresql
sudo -u postgres psql -c "CREATE USER user1 PASSWORD 'password1';"
sudo -u postgres psql -1 -c "ALTER USER user1 WITH SUPERUSER;"

echo 'RVM'
sudo yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel
sudo yum install -y libyaml-devel libffi-devel openssl-devel make
sudo yum install -y bzip2 autoconf automake libtool bison iconv-devel sqlite-devel nodejs
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm reload
rvm requirements run

echo 'Ruby'
# Attempt to install 2.4.1 was not successful
export rvmsudo_secure_path=1
rvmsudo rvm install 2.4.0
rvm list
rvm use 2.4.0 --default
ruby --version

echo 'Bundler'
gem install bundler
cd /vagrant
bundle install
sudo mv pg_hba.conf /var/lib/pgsql/data/pg_hba.conf
sudo systemctl reload postgresql

rake db:create
rake db:migrate
echo 'Server'
rails s -b 0.0.0.0
