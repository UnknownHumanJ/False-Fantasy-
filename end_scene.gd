extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(1.0).timeout
	$AnimatedSprite2D.play("default")
	DialogueManager.show_example_dialogue_balloon(load("res://WakeUp.dialogue"))
	await DialogueManager.dialogue_ended
	get_tree().change_scene_to_file("res://main_menu.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
