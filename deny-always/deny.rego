package env0

# METADATA
# title: deny always
# description: test deny
deny[format(rego.metadata.rule())]

format(meta) := meta.description
