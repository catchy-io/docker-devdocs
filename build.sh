#!/bin/sh

#export http_proxy=http://172.17.42.1:8888/
#export https_proxy=$http_proxy

apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C3173AA6
echo deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main > /etc/apt/sources.list.d/ruby.list
apt-get update
apt-get install -y ruby2.1 ruby2.1-dev nodejs make libcurl3 git build-essential

mkdir -p /opt
cd /opt
git clone https://github.com/Thibaut/devdocs.git 
cd devdocs
gem install bundler
bundle install

thor docs:download angular c css d3 dom dom_events git html http javascript jquery_core jquery_ui jquery_mobile less markdown node php redis

apt-get remove -y --purge make git build-essential git-man libcurl3-gnutls libedit2 liberror-perl libx11-6 libx11-data libxau6 libxcb1 fakeroot g++ g++-4.8 libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libdpkg-perl libfakeroot libfile-fcntllock-perl libtimedate-perl libxdmcp6 patch rsync  linux-libc-dev manpages manpages-dev patch libc-dev-bin libc6-dev libgcc-4.8-dev libstdc++-4.8-dev cpp cpp-4.8 libasan0 libatomic1 libcloog-isl4 libgomp1 libisl10 libitm1 libmpc3 libmpfr4 libquadmath0 libtsan0 libroken18-heimdal krb5-locales libgssapi-krb5-2 libheimbase1-heimdal libidn11 libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 librtmp0 libsasl2-2 libsasl2-modules libsasl2-modules-db
apt-get clean -y
