/// @description Golpe al jugador

//Si es golpeado por una bala roja siendo azul
if global.Rojo==false && sprite_index==bulletREV_left{
	
	 audio_play_sound(snd_Hit,1,0);
	 instance_destroy();
	}
//Si es golpeado por una bala azul siendo rojo
else if global.Rojo==true && sprite_index==bullet_left{
	
	audio_play_sound(snd_Hit,1,0);
	instance_destroy();
	}
