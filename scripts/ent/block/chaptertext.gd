extends LuminaEntity

@export var text = "CHAPTER"

func _on_body_entered(body):
	if body is LuminaPlayer:
		trigger()

func trigger():
	util.player_node.chapter_text(text)
	kill()
