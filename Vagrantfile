# -*- mode: ruby -*-
# vi: set ft=ruby :
hosts = {
  "n1" => "192.168.77.10",
  "n2" => "192.168.77.11",
  "n3" => "192.168.77.12",
  "n4" => "192.168.77.13"
}
Vagrant.configure("2") do |config|
  # always use Vagrants insecure key
  config.ssh.insert_key = false
  # forward ssh agent to easily ssh into the different machines
  config.ssh.forward_agent = true

  # check_guest_additions = false
  # functional_vboxsf     = false

  config.vm.box = "bento/ubuntu-16.04"
  # config.vm.box = "ubuntu/xenial64"

  config.vm.provision :ansible do |ansible|
    # ansible.host_key_checking = false
    # etc.
    ansible.playbook = "playbook.yml"
  end

  hosts.each do |name, ip|
    config.vm.define name do |machine|
      machine.vm.network :private_network, ip: ip
      machine.vm.provider "virtualbox" do |v|
        v.name = name
      end
    end
  end
end