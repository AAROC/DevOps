# Testing with Docker


```
sudo docker run -t -h localhost.dev -P -dns=8.8.8.8 -v $PWD:$PWD -w $PWD aaroc/site-bdii:centos6.8 ansible-playbook  -c local -i inventories/inventory.local  playbook.yml
```
