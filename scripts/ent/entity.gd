class_name lumina_entity
extends Node3D

func _process(delta):
	draw_links()
	if get_node_or_null("dev") != null:
			get_node("dev").visible = util.developer

func kill():
	msg("Bye bye")
	queue_free()

func trigger():
	msg("UNIMPLEMENTED TRIGGER FUNCTION")

func error(msg):
	util.notif("Something has gone wrong in " + str(self) + "\n" + msg)
	msg("ERROR: " + msg + "! Killing self.")
	kill()

func msg(msg):
	print("[" + str(self) + "] " + str(msg))

func draw_links():
	if "target" in self:
			if self.target != null:
				DebugDraw.draw_arrow_line(self.global_position, self.target.global_position,Color.DEEP_PINK,0.1,true)
			
