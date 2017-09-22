# Test for OpenStack installation
# Using Pike Requirements at 
# https://docs.openstack.org/project-deploy-guide/openstack-ansible/pike/overview-requirements.html


#  Check the kernel version
def test_kernel(host):
    facts=host.facter()
    assert facts.kernelversion >= '3.10.0'
    
def test_ntp(host):
    package=host.package('ntp')
    assert package.is_installed

def test_python(host):
    python=host.package('python')
    assert python.is_installed
    assert python.version >= 2.7

# CPU 
# - should have hardware-assisted virtualisation
# - should have hypthreading

# disk
# - controller should have 10GB of space

# - compute nodes should have ~1TB space
# - storage nodes should have ~1TB space
# - infrastructure nodes should have 100 GB space
# - logging hosts should have 50 GB space.
# - block storage nodes must have lvm
# - Ensure that hosts have a cinder-volume volume group 
