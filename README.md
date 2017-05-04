andrewrothstein.rstudio
=========
[![CircleCI](https://circleci.com/gh/andrewrothstein/ansible-rstudio.svg?style=svg)](https://circleci.com/gh/andrewrothstein/ansible-rstudio)

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
