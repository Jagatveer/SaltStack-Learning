app_install:
  git.latest:
    - name: {{ pillar['git_url'] }}
    - rev: {{ pillar['branch_or_tag'] }}
    - target: {{ pillar['document_root'] }}/{{ pillar['project_name'] }}
    - force: True
    - require:
      - pkg: git
