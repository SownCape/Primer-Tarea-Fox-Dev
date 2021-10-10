/// @description Movimientos jugador
// MOVIMIENTO DE JUGADOR

keyDash=keyboard_check(ord("X"));

//Invertir color de jugador al presionar espacio
if keyboard_check_pressed(vk_space){
	global.Rojo= !global.Rojo;
}

//Movimiento de jugador
	if keyboard_check(vk_right){ //Derecha
		direction=0;
		speed=velocidad;
	}

	if keyboard_check(vk_left){ //Izquierda
		direction=180;
		speed=velocidad;
	}
	
	if keyboard_check(vk_up){ //Arriba
		direction=90;
		speed=velocidad
	}
	
	if keyboard_check(vk_down){ //Abajo
		direction=270;
		speed=velocidad
	}
	
	//Dejar de moverse al soltar teclas
	if keyboard_check_released(vk_anykey){  
		speed=0;
	}
	
// Direccion velocidad de sprites
	if speed>0{
		image_speed=1;
	}
	else{
		image_speed=0;
		image_index=0;
	}

	
	
//Hacer animacion de giro, cambiar a frame estatico
switch(direction){
	case 0:
		
		//Determinar cual sprite usar al moverse
		if  global.Rojo==false {
		sprite_index=spr_player_turn_right;
		} else{
		sprite_index=spr_player_turn_rightREV;
		}
		
//Detener sprite en el ultimo frame para continuar en la direccion
		if (image_index + image_speed >= image_number){
		    image_speed = 0;
		}	
		
	break;
	
	
	case 90:
	
		//Determinar cual sprite usar al moverse
		if global.Rojo==false {
		sprite_index=spr_player_turn_up;
		} else{
		sprite_index=spr_player_turn_upREV;
		}
	
	//Detener sprite en el ultimo frame para continuar en la direccion
		if (image_index + image_speed >= image_number){
		    image_speed = 0;
		}	
		
	break;
	
	case 180:
	
		//Determinar cual sprite usar al moverse
		if global.Rojo==false {
		sprite_index=spr_player_turn_left;
		} else{
		sprite_index=spr_player_turn_leftREV;
		}
		
	//Detener sprite en el ultimo frame para continuar en la direccion	
		if (image_index + image_speed >= image_number){
		    image_speed = 0;
		}	
	

	break;
	
	case 270:
	
		//Determinar cual sprite usar al moverse
		if global.Rojo==false {
		sprite_index=spr_player_turn_down;
		} else{
		sprite_index=spr_player_turn_downREV;
		}

//Detener sprite en el ultimo frame para continuar en la direccion
		if (image_index + image_speed >= image_number){
		    image_speed = 0;
		}
	
	break;
	}

//Cambio de velocidad al presionar ctrl, perder stamina al presionarlo
	if keyDash && (global.stamina>0) {
		global.stamina -=3.5;
		speed=velocidad*4;
		} 

	
	//Ganar stamina cuando no se presiona ctrl
	if !(keyDash){
		global.stamina +=0.75;
	}
	
	//Stamina no puede ser mayor a 100
	if global.stamina > 100 {
		global.stamina=100;
	}
	
	//Stamina no puede ser menor a 0
	if global.stamina < 0 {
		global.stamina=0;
	}
	