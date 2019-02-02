extends KinematicBody2D

export (int) var speed = 200
var velocidade = Vector2()
var animacao = 'parado'

func get_input():
		
	velocidade = Vector2()
	
	if Input.is_action_pressed('move_up'):
		velocidade.y -= 1
		$AnimationPlayer.play('andarUp')			
	elif Input.is_action_pressed('move_down'):
		velocidade.y += 1
		$AnimationPlayer.play('andarDown')
	elif Input.is_action_pressed('move_right'):
		velocidade.x += 1		
		$AnimationPlayer.play('andarRight')		
		$spPlayer.flip_h = false
	elif Input.is_action_pressed('move_left'):
		velocidade.x -= 1		
		$AnimationPlayer.play('andarLeft')
		$spPlayer.flip_h = true		
		
	velocidade = velocidade.normalized() * speed 
	
	
	
	
	
	
	
func _process(delta):
	get_input()
	move_and_slide(velocidade)
		
	pass




