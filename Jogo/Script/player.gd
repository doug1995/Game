extends KinematicBody2D

export (int) var speed = 200
var velocidade = Vector2()


func get_input():
	velocidade = Vector2()
	if Input.is_action_pressed('move_up'):
		velocidade.y -= 1  
	if Input.is_action_pressed('move_down'):
		velocidade.y += 1
	if Input.is_action_pressed('Right'):
		velocidade.x += 1
	if Input.is_action_pressed('Left'):
		velocidade.x += 1
	velocidade = velocidade.normalized() * speed
	
	
	
	
func processofisico(delta):
	print('teste')
	get_input()
	move_and_slide(velocidade)
	pass


