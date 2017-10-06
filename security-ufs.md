# 90317 (7) - SSH Weak Algorithms Supported

Remove arcfour ciphers : 
- arcfour128
- arcfour256

from 

- 196.21.182.7 (tcp/22)
- 196.21.182.16 (tcp/22)
- 196.21.182.111 (tcp/22)
- 196.21.182.113 (tcp/22)
- 196.21.182.114 (tcp/22)
- 196.21.182.116 (tcp/22)

only enable aes128-ctr,aes192-ctr,aes256-ctr

#  51192 (3) - SSL Certificate Cannot Be Trusted

In the apache config file add 'TraceEnable off'

# 11213 (1) - HTTP TRACE / TRACK Methods Allowed

- 196.21.182.7 (tcp/80)

# 71049 (6) - SSH Weak MAC Algorithms Enabled 

hmac-ripemd160,hmac-sha2-256,hmac-sha2-512,hmac-ripemd160@openssh.com