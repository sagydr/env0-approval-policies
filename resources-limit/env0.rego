package env0

# METADATA
# title: only admin can approve more than 5 planned resources
# description: require approval on more than 5 planned resources
pending[format(rego.metadata.rule())] {
	input.plan.planned_values.resources > 5
	input.requestingUser.role != "ADMIN"
}

# METADATA
# title: Admin is allowed to approve
# description: admin is allowed to approve any deployment
allow[format(rego.metadata.rule())] {
	input.requestingUser.role == "ADMIN"
}

format(meta) := meta.description
