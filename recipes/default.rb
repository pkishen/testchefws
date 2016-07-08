#
# Cookbook Name:: chef ws for chef-tren p2p
# Recipe:: default
#

include_recipe 'chocolatey'
include_recipe 'chrome'

user 'Administrator' do
  password '@#Sysgain123'
end

chocolatey "git.install" do
  options ({'params' => '"/force /GitAndUnixToolsOnPath"'})
end

%w{poshgit atom}.each do |pack|
  chocolatey pack
end
