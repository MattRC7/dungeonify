extends SceneTree

const LSystem = preload("res://lsystem.gd")
	
func _init():
	run_test('A', { 'A': 'AB', 'B': 'A' }, 7, 'ABAABABAABAABABAABABAABAABABAABAAB')
	quit()

func run_test(axiom, rules, iterations, expected):
	var dungeon_generator = LSystem.new(axiom, rules)
	print_result(dungeon_generator.generate(iterations).to_string(), expected)
	
func print_result(actual, expected):
	if actual == expected:
		print("Success!")
		print(actual)
		print(expected)
	else:
		print("Failure!")
		print(actual)
		print(expected)
