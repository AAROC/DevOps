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
                    dn    => '/C=IT/O=INFN/OU=Host/L=ZA-UFS/CN=voms.sagrid.ac.za',
                    ca_dn => '/C=IT/O=INFN/CN=INFN CA'
                   },
                 ]
 }
  voms::client{'sagrid.ac.za':
      servers  => [
                    {server => 'voms.sagrid.ac.za',
                    port   => '15003',
                    dn    => '/C=IT/O=INFN/OU=Host/L=ZA-UFS/CN=voms.sagrid.ac.za',
                    ca_dn => '/C=IT/O=INFN/CN=INFN CA'
                   },
                  ]
 }
}
