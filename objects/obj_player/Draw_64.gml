/// @description Barra de stamina

//Mientras esté el jugador la barra existirá
if(instance_exists(obj_player)){
	
	//Mostrar sprite barra vacía
	draw_sprite(spr_stamina_back,1,8,8);
	
	//Mostrar sprite barra que se va llenando
	draw_sprite_ext(spr_stamina_front,1,8,8,
	max(0,global.stamina/global.staminamax),1,0,c_white,1);
	}	
