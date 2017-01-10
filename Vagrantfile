
Vagrant.configure("2") do |config|
  config.vm.box = "vagrant-aws"
  config.vm.define "node01" do |node01|
    node01.vm.provider :aws do |aws, override|
      aws.access_key_id = ""
      aws.secret_access_key = ""
      aws.keypair_name = ""
      aws.ami = ""
      aws.region = ""
      aws.instance_type = ""
      aws.security_groups = ["default"] 
      aws.tags = {
          "Name" => "node01"
      }
      override.ssh.username = "ec2-user"
      override.ssh.private_key_path = "keys/ec2-user.pem"
    end
    config.vm.provision :ansible do |ansible|
      ansible.playbook = "playbooks/provision.yml"
    end
  end
end
