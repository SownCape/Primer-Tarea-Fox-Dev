/// @description Colisión Bala

//Si es golpeado por una bala roja siendo azul
if global.Rojo==false && sprite_index==bulletREV_left{
	 global.Hit +=1;
	 audio_play_sound(snd_Hit,1,0);
	}
//Si es golpeado por una bala azul siendo rojo
else if global.Rojo && sprite_index==bullet_left{
	global.Hit +=1;
	audio_play_sound(snd_Hit,1,0);
	}
