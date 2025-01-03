extends Control

func _ready() -> void:
    $Timer.start()

func _on_timer_timeout() -> void:
    # Fade animation
    $AnimationPlayer.play("fade_out")
    $AnimationPlayer.connect("animation_finished", Callable(self, "_on_animation_finished"))

func _on_animation_finished(anim_name: String) -> void:
    if anim_name == "fade_out":
        get_tree().change_scene_to_file("res://scenes/main.tscn")