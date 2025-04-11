extends Node2D

@onready var collision_polygon_2d = $StaticBody2D/CollisionPolygon2D
@onready var polygon_2d = $StaticBody2D/CollisionPolygon2D/Polygon2D
<<<<<<< Updated upstream
=======
@onready var level_completed = $CanvasLayer/LevelCompleted




func _ready(): 
	polygon_2d.polygon = collision_polygon_2d.polygon 
	polygon_2d.polygon = collision_polygon_2d.polygon
	Events.level_completed.connect(show_level_completed)
	

>>>>>>> Stashed changes

func _ready(): 
	polygon_2d.polygon = collision_polygon_2d.polygon
