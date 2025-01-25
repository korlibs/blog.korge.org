---

database-plugin: basic

---

```yaml:dbfolder
name: new database
description: new description
columns:
  __file__:
    key: __file__
    id: __file__
    input: markdown
    label: File
    accessorKey: __file__
    isMetadata: true
    skipPersist: false
    isDragDisabled: false
    csvCandidate: true
    position: 4
    isHidden: false
    sortIndex: -1
    width: 265
    isSorted: false
    isSortedDesc: true
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: true
      task_hide_completed: true
      footer_type: none
      persist_changes: false
      wrap_content: true
      content_alignment: text-align-left
  tags:
    input: tags
    accessorKey: tags
    key: tags
    id: tags
    label: tags
    position: 7
    skipPersist: false
    isHidden: false
    sortIndex: -1
    width: 191
    options:
      - { label: "kotlin", value: "kotlin", color: "hsl(8, 95%, 90%)"}
      - { label: "korge", value: "korge", color: "hsl(288, 95%, 90%)"}
      - { label: "article", value: "article", color: "hsl(271, 95%, 90%)"}
      - { label: "applications", value: "applications", color: "hsl(296, 95%, 90%)"}
      - { label: "korlibs", value: "korlibs", color: "hsl(52, 95%, 90%)"}
      - { label: "release", value: "release", color: "hsl(16, 95%, 90%)"}
      - { label: "videogames", value: "videogames", color: "hsl(56, 95%, 90%)"}
      - { label: "compilers", value: "compilers", color: "hsl(71, 95%, 90%)"}
      - { label: "programming", value: "programming", color: "hsl(152, 95%, 90%)"}
      - { label: "misc", value: "misc", color: "hsl(62, 95%, 90%)"}
      - { label: "pspemu", value: "pspemu", color: "hsl(126, 95%, 90%)"}
      - { label: "meta", value: "meta", color: "hsl(230, 95%, 90%)"}
      - { label: "ktor", value: "ktor", color: "hsl(229, 95%, 90%)"}
      - { label: "mmo", value: "mmo", color: "hsl(182, 95%, 90%)"}
      - { label: "jtransc", value: "jtransc", color: "hsl(344, 95%, 90%)"}
      - { label: "sysadmin", value: "sysadmin", color: "hsl(180, 95%, 90%)"}
      - { label: "docker", value: "docker", color: "hsl(51, 95%, 90%)"}
      - { label: "intellij", value: "intellij", color: "hsl(236, 95%, 90%)"}
      - { label: "jekyll", value: "jekyll", color: "hsl(352, 95%, 90%)"}
      - { label: "relesase", value: "relesase", color: "hsl(73, 95%, 90%)"}
      - { label: "talk", value: "talk", color: "hsl(84, 95%, 90%)"}
      - { label: "nodejs", value: "nodejs", color: "hsl(143, 95%, 90%)"}
      - { label: "pspautotests", value: "pspautotests", color: "hsl(312, 95%, 90%)"}
      - { label: "php", value: "php", color: "hsl(278, 95%, 90%)"}
      - { label: "productivity", value: "productivity", color: "hsl(236, 95%, 90%)"}
      - { label: "sponsors", value: "sponsors", color: "hsl(246, 95%, 90%)"}
      - { label: "blog", value: "blog", color: "hsl(166, 95%, 90%)"}
      - { label: "notion", value: "notion", color: "hsl(230, 95%, 90%)"}
      - { label: "Kotlin", value: "Kotlin", color: "hsl(224, 95%, 90%)"}
      - { label: "github", value: "github", color: "hsl(297, 95%, 90%)"}
      - { label: "videos", value: "videos", color: "hsl(81, 95%, 90%)"}
      - { label: "coding-sessions", value: "coding-sessions", color: "hsl(162, 95%, 90%)"}
      - { label: "talks", value: "talks", color: "hsl(37, 95%, 90%)"}
      - { label: "web", value: "web", color: "hsl(185, 95%, 90%)"}
      - { label: "webservers", value: "webservers", color: "hsl(205, 95%, 90%)"}
      - { label: "d", value: "d", color: "hsl(226, 95%, 90%)"}
      - { label: "C#", value: "C#", color: "hsl(333, 95%, 90%)"}
      - { label: "lenguajes de programación", value: "lenguajes de programación", color: "hsl(307, 95%, 90%)"}
      - { label: "algoritmos", value: "algoritmos", color: "hsl(304, 95%, 90%)"}
      - { label: "flash", value: "flash", color: "hsl(336, 95%, 90%)"}
      - { label: "i+d", value: "i+d", color: "hsl(241, 95%, 90%)"}
      - { label: "pixelbender", value: "pixelbender", color: "hsl(268, 95%, 90%)"}
      - { label: "shaders", value: "shaders", color: "hsl(335, 95%, 90%)"}
      - { label: "as3", value: "as3", color: "hsl(263, 95%, 90%)"}
      - { label: "Anuncios", value: "Anuncios", color: "hsl(353, 95%, 90%)"}
      - { label: "phpmedia", value: "phpmedia", color: "hsl(327, 95%, 90%)"}
      - { label: "old", value: "old", color: "hsl(23, 95%, 90%)"}
      - { label: "spanish", value: "spanish", color: "hsl(65, 95%, 90%)"}
      - { label: "lenguajes", value: "lenguajes", color: "hsl(118, 95%, 90%)"}
      - { label: "de", value: "de", color: "hsl(102, 95%, 90%)"}
      - { label: "programación", value: "programación", color: "hsl(283, 95%, 90%)"}
      - { label: "cardio", value: "cardio", color: "hsl(82, 95%, 90%)"}
      - { label: "fun", value: "fun", color: "hsl(245, 95%, 90%)"}
      - { label: "life-lessons", value: "life-lessons", color: "hsl(59, 95%, 90%)"}
      - { label: "stories", value: "stories", color: "hsl(42, 95%, 90%)"}
      - { label: "social-coding", value: "social-coding", color: "hsl(144, 95%, 90%)"}
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: false
      task_hide_completed: true
      footer_type: none
      persist_changes: false
      option_source: manual
      content_alignment: text-align-left
      wrap_content: true
  title:
    input: text
    accessorKey: title
    key: title
    id: title
    label: title
    position: 5
    skipPersist: false
    isHidden: false
    sortIndex: -1
    width: 662
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: false
      task_hide_completed: true
      footer_type: none
      persist_changes: false
      content_alignment: text-align-left
  sponsor_tier:
    input: number
    accessorKey: sponsor_tier
    key: sponsor_tier
    id: sponsor_tier
    label: sponsor_tier
    position: 8
    skipPersist: false
    isHidden: false
    sortIndex: -1
    width: -38
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: false
      task_hide_completed: true
      footer_type: none
      persist_changes: false
      wrap_content: true
      content_alignment: text-align-left
  date:
    input: calendar_time
    accessorKey: date
    key: date
    id: date
    label: date
    position: 3
    skipPersist: false
    isHidden: false
    sortIndex: 1
    width: 81
    isSorted: true
    isSortedDesc: true
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: false
      task_hide_completed: true
      footer_type: none
      persist_changes: false
  draft:
    input: checkbox
    accessorKey: draft
    key: draft
    id: draft
    label: draft
    position: 2
    skipPersist: false
    isHidden: false
    sortIndex: -1
    width: 69
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: false
      task_hide_completed: true
      footer_type: none
      persist_changes: false
  layout:
    input: text
    accessorKey: layout
    key: layout
    id: layout
    label: layout
    position: 6
    skipPersist: false
    isHidden: false
    sortIndex: -1
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: false
      task_hide_completed: true
      footer_type: none
      persist_changes: false
  priv:
    input: checkbox
    accessorKey: priv
    key: priv
    id: priv
    label: priv
    position: 1
    skipPersist: false
    isHidden: false
    sortIndex: -1
    width: 69
    config:
      enable_media_view: true
      link_alias_enabled: true
      media_width: 100
      media_height: 100
      isInline: false
      task_hide_completed: true
      footer_type: none
      persist_changes: false
config:
  remove_field_when_delete_column: false
  cell_size: normal
  sticky_first_column: false
  group_folder_column: 
  remove_empty_folders: false
  automatically_group_files: false
  hoist_files_with_empty_attributes: true
  show_metadata_created: false
  show_metadata_modified: false
  show_metadata_tasks: false
  show_metadata_inlinks: false
  show_metadata_outlinks: false
  show_metadata_tags: false
  source_data: query
  source_form_result: "FROM \"posts\" WHERE priv=true"
  source_destination_path: /
  row_templates_folder: /
  current_row_template: 
  pagination_size: 200
  font_size: 12
  enable_js_formulas: false
  formula_folder_path: /
  inline_default: false
  inline_new_position: last_field
  date_format: yyyy-MM-dd
  datetime_format: "yyyy-MM-dd HH:mm:ss"
  metadata_date_format: "yyyy-MM-dd HH:mm:ss"
  enable_footer: false
  implementation: default
filters:
  enabled: false
  conditions:
```