extends Control


@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton   

var dialogue_items: Array[String] = [ 
	"Erm- h-how did you f-find me baka!", 
	"YOU CANT STOP ME!!!", 
	"If you do....", 
	"I WON'T TURN THE BOMB OFF AND YOU WILL BE PERMANENTLY JELLY!!!", 
	"My nerdinator...",
	"It will make everyone in the city just like me...",
	"A WHOLE CITY OF SUPERNERDS",
	"We will watch anime TOGETHER",
	"We will hop on LOL TOGETHER",
	"We will always be TOGETHER",
	"Ill never be alone again!!!!",
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
		get_tree().change_scene_to_file("res://the_choice.tscn")
		


	else: 
		show_text()
