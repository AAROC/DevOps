# Copyright 2016 CSIR Meraka Institute

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Docker file for UMD User Interface
#
FROM quay.io/aaroc/ansible-ready-centos6
MAINTAINER Bruce Becker <bbecker@csir.co.za>
ADD [".", "/root/"]
WORKDIR /root/
CMD ls /root
RUN ansible-playbook -c local -i inventories/inventory.ui.local ui-container.yml --skip-tags="slack" -e SkipCRLs=true
