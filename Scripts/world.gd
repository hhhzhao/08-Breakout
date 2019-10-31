extends Node

export var score = 0
export var lives = 3
var new_ball = preload("res://Scenes/Ball.tscn")


func increase_score(s):
 score += int(s)
 find_node("Score").update_score()
 if score>=100 and not find_node("Ball2", true, false):
  var ball2 = new_ball.instance()
  ball2.position = Vector2(400, -30)
  ball2.set_name("Ball2")
  ball2.linear_velocity = Vector2(200, -200)
  add_child(ball2)
 
func decrease_lives():
 lives -= 1
 find_node("Lives").update_lives()
 if lives <= 0:
  get_tree().change_scene("res://Scenes/End.tscn")
