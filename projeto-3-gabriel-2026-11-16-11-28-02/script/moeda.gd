extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _on_body_entered(body: Node2D) -> void:
		
		if body.name == "player":
			get_tree().call_group("hud", "adicionar_moeda")
			queue_free()
