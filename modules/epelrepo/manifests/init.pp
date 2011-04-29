# *epel-repo* - Install epel repo for Centos
#
# == Parameters
#
# None
#
# == Variables
#
# None
#
# == Examples
#
# Put simply, just include it:
#
#   include epelrepo
#
# == Authors
#
# Ken Barber <ken@bob.sh>
#
# == Copyright
#
# Copyright 2011 Puppetlabs Inc, unless otherwise noted.
#
class epelrepo {
  # Configure epel
  yumrepo { 'epel':
    mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=$basearch',
    failovermethod => 'priority',
    enabled => 1,
    gpgcheck => 0,
  }
}
