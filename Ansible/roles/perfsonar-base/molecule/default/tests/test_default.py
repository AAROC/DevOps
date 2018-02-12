# Write tests for the hosts here.
import os

import pytest
import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


#  Basic sanity check - the hosts file should be long to root
def test_hosts_file(host):
    f = host.file('/etc/hosts')
    assert f.exists
    assert f.user == 'root'
    assert f.group == 'root'


#  Basic sanity check - ntp must be installed
def test_ntp(host):
    assert host.package('ntp').is_installed


@pytest.mark.parametrize('package_name',
                         [('perfsonar-tools'),
                          ('perfsonar-core'), ('perfsonar-common'),
                          ('perfsonar-oppd-bwctl'), ('perfsonar-oppd-owamp'),
                          ('perfsonar-oppd-server'), ('perfsonar-oppd-shared'),
                          ('perfsonar-testpoint'), ('perfsonar-tools')])
def test_prerequisites(host, package_name):
    package = host.package(package_name)
    assert package.is_installed
# def test_migration(host):
#     f = host.file('/usr/lib/perfsonar/scripts/ps-migrate-backup.sh')
#     assert f.exists
