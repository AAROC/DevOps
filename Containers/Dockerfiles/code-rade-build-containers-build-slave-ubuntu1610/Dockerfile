FROM quay.io/aaroc/ansible-ready-ubuntu16.10
LABEL org.aaroc.code-rade="FR3"
RUN ansible-container install AAROC.CODE-RADE-container
ADD playbook.yml
RUN ansible-playbook
