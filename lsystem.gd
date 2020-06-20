var system = []
var rules = {}
func _init(axiom, rules):
	self.system.append(String(axiom))
	self.rules = rules
func generate(iterations):
	for i in range(iterations):
		var new_system = ""
		for state in system.back():
			new_system += self.rules[state]
		system.append(new_system)
	return self;
func to_string():
	return system.back()
