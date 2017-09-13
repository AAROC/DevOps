# Infrastructure tests on grafana dashboards provisioned with
# the grafana.yml playbook and grafana role.

def test_package(host):
    assert host.package('grafana').is_installed

def test_init(host):
    file=host.file('/etc/grafana/grafana.ini')
    assert file.exists
    assert file.user == 'root'
    assert file.group == 'grafana'
    assert oct(file.mode) == '0640'



def test_service(host):
    service=host.service('grafana-server')
    assert service.is_running
    assert service.is_enabled
    assert host.socket('tcp://3000').is_listening