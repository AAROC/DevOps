# Class defining the sagrid VO, as seen by the VOMS service.
#
# Takes care of all the required setup to enable access to the SAGRID VO
# (users and services) in a grid enabled machine.
#
# == Examples
# 
# Simply enable this class:
#   class{'voms::sagrid':}
#
# == Authors
#
# ZA-UJ <chris.lee@cern.ch>

class voms::sagrid {
  voms::client{'sagrid':
      servers  => [
                    {server => 'voms.sagrid.ac.za',
                    port   => '15001',
                    dn    => '/DC=EU/DC=EGI/C=ZA/O=Hosts/O=ZA-UFS/CN=voms.sagrid.ac.za',
                    ca_dn => '/DC=ORG/DC=SEE-GRID/CN=SEE-GRID CA 2013'
                   },
                 ]
 }
  voms::client{'sagrid.ac.za':
      servers  => [
                    {server => 'voms.sagrid.ac.za',
                    port   => '15003',
                    dn    => '/DC=EU/DC=EGI/C=ZA/O=Hosts/O=ZA-UFS/CN=voms.sagrid.ac.za',
                    ca_dn => 'DC=ORG/DC=SEE-GRID/CN=SEE-GRID CA 2013'
                   },
                  ]
 }
}
