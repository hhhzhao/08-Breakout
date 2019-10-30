extends Node

export var score = 0
export var lives = 3
var new_ball = preload("res://Scenes/Ball.tscn")

func increase_score(s):
 score += int(s)
 find_node("Score").update_score()
 if score>=100 and not has_node("Ball2"):
   var ball = new_ball.instance()
   ball.position =  Vector2(400, 32)
   ball.name = "Ball2"
   ball.linear_velocity = Vector2(200, -200)
   get_parent().add_child(ball)
 
func decrease_lives():
 lives -= 1
 find_node("Lives").update_lives()
 if lives <= 0:
  get_tree().change_scene("res://Scenes/End.tscn")
