particle_system = part_system_create_layer("Other", 0);

particle_player_fade = part_type_create();

part_type_sprite(particle_player_fade, sPlayer, 0, 0, 0);
part_type_size(particle_player_fade, 1, 1, -0.1, 0);
part_type_life(particle_player_fade, 12, 12);
part_type_alpha1(particle_player_fade, 0.1);
part_type_color1(particle_player_fade, c_green);