# galaxy-tool-sickle-pe
Galaxy wrapper for sickle paired-end trimming, input is a zip file


## Installation
### Manual
Clone this repo in your Galaxy ***Tools*** directory:  
`git clone https://github.com/naturalis/galaxy-tool-sickle-pe `  

Make the python script executable:  
`chmod 755 galaxy-tool-sickle-pe/sickle.sh`  
`chmod 755 galaxy-tool-sickle-pe/sickle_wrapper.py` 

Append the file ***tool_conf.xml***:    
`<tool file="/path/to/Tools/galaxy-tool-sickle-pe/sickle.xml" />`  

### Ansible
Depending on your setup the [ansible.builtin.git](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/git_module.html) module could be used.  
[Install the tool](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/git_module.html#examples) 
by including the following in your dedicated ***.yml** file:  

`  - repo: https://github.com/naturalis/galaxy-tool-sickle-pe`  
&ensp;&ensp;`file: sickle.xml`  
&ensp;&ensp;`version: master`  
