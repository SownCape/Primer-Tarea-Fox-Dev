/// @description Balas

//Escoger aleatoriamente entre azul y rojo
 sprite_index=choose(bullet_left,bulletREV_left);
 image_speed=0;
 
 // Velocidad de movimiento dependiendo la bala
if sprite_index=bullet_left{
 V=3;
}
else {
 V=5;
}
direction=0;
motion_set(direction,V);
