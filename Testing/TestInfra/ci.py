# The tests for the CI server - ci.sagrid.ac.za
# Run with testinfra --host=ansible@ci.sagrid.ac.za 
# - make sure you have ssh credentials.
# - make sure the test starts with "test"

# Most tests require access to sensitive information, so use the
# --sudo option

def test_ssh_protocol(host):
    file = host.file('/etc/ssh/sshd_config')
    assert host.package('openssh-server').is_installed
# The default is 2, so this can be commented out
    assert file.contains('^[\\#]Protocol 2$') 

def test_ssh_ciphers(host):
    file = host.file('/etc/ssh/sshd_config')
    assert file.contains('^Ciphers aes128-ctr,aes192-ctr,aes256-ctr$')
    assert not file.contains('^Ciphers.*arcfour.*$')
    

def test_jenkins_service(host):
    service = host.service('jenkins')
    assert service.is_running
    assert service.is_enabled

    
def test_track_and_trace(host):
    config_file = host.file('/etc/httpd/conf.d/jenkins.conf')
    assert config_file.contains('RewriteEngine On')
    assert config_file.contains('RewriteCond \%{REQUEST_METHOD} \^\(TRACE\|TRACK\)')
    assert config_file.contains('RewriteRule \.\* - \[F\]')
