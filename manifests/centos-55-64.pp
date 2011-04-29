# stages
stage { [repos, pre, post]: }
Stage[repos] -> Stage[pre] -> Stage[main] -> Stage[post]

# Get epelrepo working first
class { 'epelrepo': stage => 'repos' }

# Now install packages 
package { 'rpm-build':      ensure => installed }
package { 'mock':           ensure => installed }
package { 'git':            ensure => installed }
package { 'man':            ensure => installed }
package { 'augeas':         ensure => installed }
package { 'augeas-libs':    ensure => installed }
package { 'ruby-augeas':    ensure => installed }

# Join root to mock so mock works
augeas{ 'group_mock':
  changes => 'set /files/etc/group/mock/user "root"',
}

