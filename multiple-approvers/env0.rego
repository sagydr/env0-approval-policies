package env0.multipleApprovals

# METADATA
# title: require 2 approvals
# description: At least 2 approvals must be given.
pending[format(rego.metadata.rule())] {
	count(input.approvers) < 2
}

format(meta) := meta.description
