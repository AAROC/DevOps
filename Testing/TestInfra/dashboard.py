def test_package(host):
    assert host.package('grafana').is_installed

def test_init(host):
   assert host.file('/etc/grafana/grafana.ini').exists
