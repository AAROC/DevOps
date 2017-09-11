def test_jenkins_service(host):
    service = host.service("jenkins")
    assert service.is_running
    assert service.is_enabled

def test_ssh(host):
    file = host.file("/etc/ssh/sshd_config")
    assert host.package("openssh-server").is_installed
    
def ports(host):
    assert host.socket("tcp://0.0.0.0:80").is_listening