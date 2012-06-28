maintainer        "Opscode, Inc."
maintainer_email  "matt@opscode.com"
description       "The OpenStack Object Storage service Swift."
license           "Apache 2.0"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.2"
recipe            "swift::account-server", "Installs the swift account server"
recipe            "swift::object-server", "Installs the swift object server"
recipe            "swift::proxy-server", "Installs the swift proxy server"
recipe            "swift::container-server", "Installs the swift container server"

%w{ubuntu fedora}.each do |os|
  supports os
end

%w{osops-utils dsh keystone apt sysctl}.each do |dep|
  depends dep
end
