# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.vm.box = "ancient/Centos7.Ansible"
  config.vm.synced_folder "logs/", "/opt/logs"
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  config.vm.network "forwarded_port", guest: 5601, host: 5601
  if Vagrant::Util::Platform.windows?
      config.vm.provision :guest_ansible do |ansible|
	ansible.verbose = "vvv"
        ansible.playbook = "site.yml"
	ansible.extra_vars = {
		host_variable: "localhost",
		es_mem: "1g",
		env: "local"
	}
       end
      else
          config.vm.provision :ansible do |ansible|
		ansible.verbose = "vvv"
	        ansible.playbook = "site.yml"
		ansible.extra_vars = {
			host_variable: "localhost",
			es_mem: "1g",
			env: "local"
		}
	end
   end
end
