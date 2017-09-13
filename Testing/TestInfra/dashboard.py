# Infrastructure tests on grafana dashboards provisioned with
# the grafana.yml playbook and grafana role.

def test_package(host):
    assert host.package('grafana').is_installed

def test_init(host):
   assert host.file('/etc/grafana/grafana.ini').exists


def test_service(host):
    service=host.service('grafana-server')
    assert service.is_running
    assert service.is_enabled