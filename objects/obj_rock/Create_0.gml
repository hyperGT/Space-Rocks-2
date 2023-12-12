/// @description Rock movement


randomize();

rotation = random_range(0.5, 0.8);
// random range serve principalmente para floats
speed = random_range(0.5, 0.6);
// mas com o "i" antes do nome da função, a gente troca por uma que só recebe inteiros
direction = irandom_range(0, 359);

// the life bar of the rock
r_life = 2;

