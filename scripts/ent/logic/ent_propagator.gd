extends LuminaEntity

@export var targets : Array = []

func trigger():
	msg("propagating triger signal")
	for target in targets:
		if target == null:
			util.notif(str(self) + " " + str(target) + " isn't a LuminaEntity or doesn't exist.")
			return

		target = get_node_or_null(target)
		
		if target is LuminaEntity:
			target.trigger()
		else:
			util.notif(str(self) + " " + str(target) + " isn't a LuminaEntity or doesn't exist.")
			return
