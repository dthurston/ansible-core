#!/bin/bash
# Base repos and channels for RHEL7
subscription-manager register --auto-attach
subscription-manager repos --disable "*"
subscription-manager repos --enable rhel-7-server-rpms  --enable rhel-7-server-optional-rpms --enable rhel-7-server-extras-rpms
yum -y update

# REBOOT HERE

# install ansible
cd /tmp
yum -y install wget
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install epel-release-latest-7.noarch.rpm
yum install ansible
