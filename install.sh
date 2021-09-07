sudo apt install vim nmap axel samba samba-dev openssh_server lrzsz  git

ssh-keygen -t rsa -b 4096 -C "woshidamayi@Gmail.com"
git config --global user.email "woshidamayi@Gmail.com"
git config --global user.name "woshidamayi"
git config --global core.editor vim
git config --global merge.tool vimdiff
git config --global commit.template ../git_template


sudo apt-get install git-core  gcc  g++  binutils  patch  bzip2  flex     bison     make     autoconf   gettext   texinfo  unzip   sharutils  ncurses-term  zlib1g-dev  libncurses5-dev   gawk  subversion   libz-dev libssl-dev libssl0.9.8 -y

mkdir ~/wget
wget https://download.qemu.org/qemu-5.2.0.tar.xz -O ~/wget
cd ~/wget
tar -xvf qemu-5.2.0.tar.xz 
cd qemu-5.2.0/
