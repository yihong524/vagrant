# vagrant config file
Vagrant.configure("2") do |config|
    config.vm.define "master1" do |master1|
        master1.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--name", "master1", "--memory", "512"]
        end
        master1.vm.box = "ubuntu/xenial64"
        master1.vm.hostname = "master1"
        master1.vm.network :private_network, ip:"192.168.11.1"
    end
        config.vm.define "master2" do |master2|
        master2.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--name", "master2", "--memory", "512"]
        end
        master2.vm.box = "ubuntu/xenial64"
        master2.vm.hostname = "master2"
        master2.vm.network :private_network, ip:"192.168.11.2"
    end
end