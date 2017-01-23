app_install:
  file.directory:
    - name: {{ pillar['document_root'] }}/.virtualenvs/
    - owner: {{ pillar['project_name'] }}
    - group: root
    - require:
      - user: root
  git.latest:
    - name: {{ pillar['git_url'] }}
    - rev: {{ pillar['branch_or_tag'] }}
    - target: {{ pillar['document_root'] }}/{{ pillar['project_name'] }}
    - force: True
    - require:
      - pkg: git_install
  virtualenv.managed:
    - name: {{ pillar['document_root'] }}/.virtualenvs/{{ pillar['project_name'] }}
    - no_site_packages: True
    - user: {{ pillar['project_name'] }}
    - require:
      - git: app_install
      - pip: python-virtualenv_install
      - pkg: python-dev_install
      - pkg: libldap2-dev_install
      - pkg: libsasl2-dev_install
      - pkg: libssl-dev_install
      - pkg: python-pip_install
      - pkg: python-ldap_install
      - pkg: libpq-dev_install
      - file: newrelic_app_config
      - file: ldap_conf
    - require_in:
      - pip: uwsgi_install
