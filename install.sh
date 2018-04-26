
# vagrant ssh n4
# # 替换ubuntu的源为阿里
# sudo sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list

# sudo apt-get update
# sudo apt-get install -y python-pip

# # 修改pip源为阿里源
# mkdir ~/.pip
# echo "[global]
# index-url = http://mirrors.aliyun.com/pypi/simple/
# [install]
# trusted-host = mirrors.aliyun.com" > ~/.pip/pip.conf
# # 安装ansible
# sudo pip install ansible
# sudo apt-get install -y sshpass

# # ansible
# ansible --version

# #  generate ssh key in ~/.ssh/
# ssh-keygen -t rsa -f ~/.ssh/id_rsa -P ""

# export ANSIBLE_HOST_KEY_CHECKING=False

# # add ssh-key
# sudo ansible-playbook -i hosts ssh-addkey.yml

# place hosts, vars.yml, playbook.yml in current path
# sudo ansible-playbook -i hosts playbook.yml

vagrant up

# initial kubernetes
sudo kubeadm init --api-advertise-addresses 192.168.77.10