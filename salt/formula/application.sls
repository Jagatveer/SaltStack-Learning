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
    - target: {{ pillar['document_root'] }}/{{ pillar['project_name'] }}/{{ pillar['project_name'] }}-repo
    - user: {{ pillar['project_name'] }}
    - force: True
    - require:
      - pkg: git_install
  virtualenv.managed:
    - name: {{ pillar['document_root'] }}/.virtualenvs/{{ pillar['project_name'] }}
    - no_site_packages: True
    - user: {{ pillar['project_name'] }}
