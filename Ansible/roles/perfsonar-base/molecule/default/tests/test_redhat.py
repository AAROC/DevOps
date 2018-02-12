# Test RedHat-specific things here
import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('CentOS7')


def test_package(host):
    assert host.package('perfSONAR-repo').is_installed


# Check that the OPPD server configuration files are in the right place
def test_oppd_server(host):
    server_file = host.file('/usr/lib/perfsonar/bin/oppd-server.pl')
    assert server_file.exists
    assert server_file.is_file
    assert server_file.user == 'perfsonar'


# Check permissios on the server conf file
def test_oppd_config(host):
    config_file = host.file('/etc/perfsonar/oppd-server.conf')

    assert config_file.exists
    assert config_file.is_file
    assert config_file.user == 'perfsonar'


def test_oppd_sysconfig(host):

    sysconfig = host.file('/etc/sysconfig/oppd-server')

    assert sysconfig.exists
    assert sysconfig.is_file
    assert sysconfig.user == 'perfsonar'
