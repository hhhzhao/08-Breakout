extends StaticBody2D

var pink = preload("res://Assets/BRICK/PINKBRICK.png")
var metal = preload("res://Assets/BRICK/metalBRICK.png")
var blue = preload("res://Assets/BRICK/BLUEEBRICK.png")
var green = preload("res://Assets/BRICK/rGREENBRICK.png")
var purple = preload("res://Assets/BRICK/PURPLEBRICK.png")

onready var sprite = get_node("Sprite")
var score = 10

func _ready():
   if get_parent().name == "Blue Brick":
       sprite.set_texture(blue)
   if get_parent().name == "Pink Brick":
       sprite.set_texture(pink)
       score = 15
   if get_parent().name == "Metal Brick":
       sprite.set_texture(metal)
       score = 20
   if get_parent().name == "Green Brick":
       sprite.set_texture(green)
       score = 25
   if get_parent().name == "Purple Brick":
       sprite.set_texture(purple)
       score = 30
	