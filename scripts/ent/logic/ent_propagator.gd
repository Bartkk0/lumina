extends lumina_entity

@export var targets : Array[lumina_entity] =  [lumina_entity.new()]

func trigger():
	msg("propagating triger signal")
	for target in targets:
		if target == null:
			util.notif(str(self) + " " + str(target) + " isn't a lumina_entity or doesn't exist.")
			return

		if target is lumina_entity:
			target.trigger()
		else:
			util.notif(str(self) + " " + str(target) + " isn't a lumina_entity or doesn't exist.")
			return

func draw_links():
	for target in targets:
		if not target is lumina_entity:
			continue
		DebugDraw.draw_arrow_line(self.global_position, target.global_position,Color.CORNFLOWER_BLUE,0.1,true)
