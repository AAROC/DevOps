# control "cis-1-2-1" do                      
#   impact 1.0                                
#   title "1.2.1 Verify CentOS GPG Key is Installed (Scored)"
#   desc "CentOS cryptographically signs updates with a GPG key to verify that they are valid."

control "ssh-v2" do
  impact 1.0
  title "Set SSH Protocol to 2 (Scored)"
  desc "SSH supports two different and incompatible protocols: SSH1 and SSH2. SSH1 was the original protocol and was subject to security issues. SSH2 is more advanced and secure."
  describe file('/etc/ssh/sshd_config') do
    its('Protocol') { should_be cmp 2 }
  end
  