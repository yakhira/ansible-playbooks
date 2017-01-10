#!/bin/sh

vagrant plugin install vagrant-aws
vagrant box add vagrant-aws https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box
