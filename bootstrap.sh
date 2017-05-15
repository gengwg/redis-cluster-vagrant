yum update -y
yum groupinstall 'Development Tools' -y
yum install epel-release -y
yum install python-pip -y
yum install vim wget -y
yum localinstall -y /vagrant/redis-3.2.8-4.x86_64.rpm
systemctl start supervisord

# install gem
yum install ruby-devel libyaml-devel -y
gem install redis
