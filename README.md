andrewrothstein.rstudio
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-rstudio.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-rstudio)

Installs [RStudio](https://www.rstudio.com/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: rstudio-servers
  roles:
    - role: andrewrothstein.rstudio
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
