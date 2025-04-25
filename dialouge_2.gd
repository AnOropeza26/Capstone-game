extends Control


@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton   

var dialogue_items: Array[String] = [ 
	"Erm hello can you hear me?", 
	"I need YOUR assistance to help me make my SUPER NERDINATOR!!!", 
	"If you disobey my orders you will perish in the most scentific way possible an EXPLOSION", 
	"SO gather what I need....or you will be permenatley jelly!!!", 
	]

var current_item_index := 0 

func _ready() -> void: 
	show_text() 
	next_button.pressed.connect(advance)  
	
func show_text() -> void: 
	var current_item := dialogue_items[current_item_index] 
	rich_text_label.text = current_item  
	
func advance() -> void: 
	current_item_index += 1 
	
	if current_item_index == dialogue_items.size(): 
		get_tree().change_scene_to_file("res://city.tscn")
		


	else: 
		show_text()
