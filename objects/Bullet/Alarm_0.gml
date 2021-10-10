/// @description Spawn aleatorio en izquierda


//Spawnear solo si hay menos de 150 balas
if instance_number(Bullet)<150{
instance_create_depth(0,irandom(room_height),99,Bullet);
}

//Empezar alarma
alarm[0]=50;
