var printLife;
printLife = 3;
FootprintParticleSystem = part_system_create();
part_system_depth(FootprintParticleSystem, 1);
part_system_position(FootprintParticleSystem, 0, 0);

//Snowprints
part_snowprintLD1 = part_type_create();
part_type_sprite(part_snowprintLD1, spr_snowprint_LD1, true, true, false);
part_type_life(part_snowprintLD1, room_speed * printLife, room_speed * printLife);

part_snowprintLD2 = part_type_create();
part_type_sprite(part_snowprintLD2, spr_snowprint_LD2, true, true, false);
part_type_life(part_snowprintLD2, room_speed * printLife, room_speed * printLife);

part_snowprintD1 = part_type_create();
part_type_sprite(part_snowprintD1, spr_snowprint_D1, true, true, false);
part_type_life(part_snowprintD1, room_speed * printLife, room_speed * printLife);

part_snowprintD2 = part_type_create();
part_type_sprite(part_snowprintD2, spr_snowprint_D2, true, true, false);
part_type_life(part_snowprintD2, room_speed * printLife, room_speed * printLife);

part_snowprintRD1 = part_type_create();
part_type_sprite(part_snowprintRD1, spr_snowprint_RD1, true, true, false);
part_type_life(part_snowprintRD1, room_speed * printLife, room_speed * printLife);

part_snowprintRD2 = part_type_create();
part_type_sprite(part_snowprintRD2, spr_snowprint_RD2, true, true, false);
part_type_life(part_snowprintRD2, room_speed * printLife, room_speed * printLife);

part_snowprintR1 = part_type_create();
part_type_sprite(part_snowprintR1, spr_snowprint_R1, true, true, false);
part_type_life(part_snowprintR1, room_speed * printLife, room_speed * printLife);

part_snowprintR2 = part_type_create();
part_type_sprite(part_snowprintR2, spr_snowprint_R2, true, true, false);
part_type_life(part_snowprintR2, room_speed * printLife, room_speed * printLife);

part_snowprintRU1 = part_type_create();
part_type_sprite(part_snowprintRU1, spr_snowprint_RU1, true, true, false);
part_type_life(part_snowprintRU1, room_speed * printLife, room_speed * printLife);

part_snowprintRU2 = part_type_create();
part_type_sprite(part_snowprintRU2, spr_snowprint_RU2, true, true, false);
part_type_life(part_snowprintRU2, room_speed * printLife, room_speed * printLife);

part_snowprintU1 = part_type_create();
part_type_sprite(part_snowprintU1, spr_snowprint_U1, true, true, false);
part_type_life(part_snowprintU1, room_speed * printLife, room_speed * printLife);

part_snowprintU2 = part_type_create();
part_type_sprite(part_snowprintU2, spr_snowprint_U2, true, true, false);
part_type_life(part_snowprintU2, room_speed * printLife, room_speed * printLife);

part_snowprintLU1 = part_type_create();
part_type_sprite(part_snowprintLU1, spr_snowprint_LU1, true, true, false);
part_type_life(part_snowprintLU1, room_speed * printLife, room_speed * printLife);

part_snowprintLU2 = part_type_create();
part_type_sprite(part_snowprintLU2, spr_snowprint_LU2, true, true, false);
part_type_life(part_snowprintLU2, room_speed * printLife, room_speed * printLife);

part_snowprintL1 = part_type_create();
part_type_sprite(part_snowprintL1, spr_snowprint_L1, true, true, false);
part_type_life(part_snowprintL1, room_speed * printLife, room_speed * printLife);

part_snowprintL2 = part_type_create();
part_type_sprite(part_snowprintL2, spr_snowprint_L2, true, true, false);
part_type_life(part_snowprintL2, room_speed * printLife, room_speed * printLife);

//Snowangels
part_snowangelLD1 = part_type_create();
part_type_sprite(part_snowangelLD1, spr_snowangel_LD1, false, false, false);
part_type_life(part_snowangelLD1, room_speed * 9999, room_speed * 9999);

part_snowangelLD2 = part_type_create();
part_type_sprite(part_snowangelLD2, spr_snowangel_LD2, false, false, false);
part_type_life(part_snowangelLD2, room_speed * 9999, room_speed * 9999);

part_snowangelRD1 = part_type_create();
part_type_sprite(part_snowangelRD1, spr_snowangel_RD1, false, false, false);
part_type_life(part_snowangelRD1, room_speed * 9999, room_speed * 9999);

part_snowangelRD2 = part_type_create();
part_type_sprite(part_snowangelRD2, spr_snowangel_RD2, false, false, false);
part_type_life(part_snowangelRD2, room_speed * 9999, room_speed * 9999);

part_snowangelRU1 = part_type_create();
part_type_sprite(part_snowangelRU1, spr_snowangel_RU1, false, false, false);
part_type_life(part_snowangelRU1, room_speed * 9999, room_speed * 9999);

part_snowangelRU2 = part_type_create();
part_type_sprite(part_snowangelRU2, spr_snowangel_RU2, false, false, false);
part_type_life(part_snowangelRU2, room_speed * 9999, room_speed * 9999);

part_snowangelLU1 = part_type_create();
part_type_sprite(part_snowangelLU1, spr_snowangel_LU1, false, false, false);
part_type_life(part_snowangelLU1, room_speed * 9999, room_speed * 9999);

part_snowangelLU2 = part_type_create();
part_type_sprite(part_snowangelLU2, spr_snowangel_LU2, false, false, false);
part_type_life(part_snowangelLU2, room_speed * 9999, room_speed * 9999);
