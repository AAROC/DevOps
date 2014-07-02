class cvmfs::base {
    require repos::cernvm
    package { ['cvmfs-release','cvmfs-keys','cvmfs','cvmfs-init-scripts','cvmfs-auto-setup']:ensure => present,}
    file {
	'/etc/fuse.conf':
	    source => 'puppet:///modules/cvmfs/fuse.conf';
	'/etc/auto.master':
	    source => 'puppet:///modules/cvmfs/auto.master';
	'/etc/cvmfs/default.local':
	    source => 'puppet:///modules/cvmfs/default.local';
	'/etc/cvmfs/domain.d/cern.ch.local':
	    source => 'puppet:///modules/cvmfs/cern.ch.local';
	'/etc/auto.cvmfs':
	    source => 'puppet:///modules/cvmfs/auto.cvmfs', mode =>755;
	    
    }

    service { 'autofs':
	ensure => running,
	enable => true,
    }
    exec { "/sbin/service autofs restart":
	refreshonly => true, 
	subscribe => File['/etc/cvmfs/default.local','/etc/cvmfs/domain.d/cern.ch.local'],
    
    }
}

class cvmfs::enmr {
    include cvmfs::base
    file {
    '/etc/cvmfs/keys/gridpp.ac.uk.pub':
	source => 'puppet:///modules/cvmfs/gridpp.ac.uk.pub',
	mode => '444';
    '/etc/cvmfs/domain.d/gridpp.ac.uk.conf':
    	source => 'puppet:///modules/cvmfs/gridpp.ac.uk.conf',
	mode => '444';
    }
}
