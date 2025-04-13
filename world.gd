extends Node

@export var next_level : PackedScene


@onready var collision_polygon_2d = $StaticBody2D/CollisionPolygon2D
@onready var polygon_2d = $StaticBody2D/CollisionPolygon2D/Polygon2D
@onready var level_completed = $CanvasLayer/LevelCompleted


func _ready(): 
	polygon_2d.polygon = collision_polygon_2d.polygon 
	polygon_2d.polygon = collision_polygon_2d.polygon
	Events.level_completed.connect(show_level_completed)

func show_level_completed():
	level_completed.show()
	get_tree().paused = true
	await LevelTransition.fade_to_black()
	get_tree().paused = false
	if not next_level is PackedScene : return
	get_tree().change_scene_to_packed(next_level)
	LevelTransition.fade_from_black()
