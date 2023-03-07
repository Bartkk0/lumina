extends LuminaEntity

@export var target : LuminaEntity

func _ready():
	if !target is LuminaEntity:
		util.notif(str(self) + " Target isn't a LuminaEntity or doesn't exist.")

func use():
	if !target is LuminaEntity:
		util.notif(str(self) + " Target isn't a LuminaEntity or doesn't exist.")
		return
	
	msg("used!")
	target.trigger()
