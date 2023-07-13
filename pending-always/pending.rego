package env0

# METADATA
# title: pending always
# description: test pending
pending[format(rego.metadata.rule())]

format(meta) := meta.description
