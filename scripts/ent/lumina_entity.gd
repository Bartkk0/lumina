extends Node

class_name LuminaEntity

func _process(_delta):
	if get_node_or_null("dev") != null:
			get_node("dev").visible = util.developer

func kill():
	msg("Bye bye")
	queue_free()

func trigger():
	msg("UNIMPLEMENTED TRIGGER FUNCTION")

func error(message):
	util.notif("Something has gone wrong in " + str(self) + "\n" + message)
	msg("ERROR: " + message + "! Killing self.")
	kill()

func msg(msg):
	print("[" + str(self) + "] " + str(msg))
