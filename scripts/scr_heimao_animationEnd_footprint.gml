if (drawFootprint == true)
{
    if (whichFoot == true)
    {
        switch (facingDir)
        {
            case 0:
                part_particles_create(FootprintParticleSystem, x, y, part_snowprintD1, 1);
                break;
            case 1:
                part_particles_create(FootprintParticleSystem, x, y, part_snowprintRD1, 1);
                break;
            case 2:
                part_particles_create(FootprintParticleSystem, x, y, part_snowprintR1, 1);
                break;
            case 3:
                part_particles_create(FootprintParticleSystem, x, y, part_snowprintRU1, 1);
                break;
            case 4:
                part_particles_create(FootprintParticleSystem, x, y, part_snowprintU1, 1);
                break;
            case 5:
                part_particles_create(FootprintParticleSystem, x, y, part_snowprintLU1, 1);
                break;
            case 6:
                part_particles_create(FootprintParticleSystem, x, y, part_snowprintL1, 1);
                break;
            case 7:
                part_particles_create(FootprintParticleSystem, x, y, part_snowprintLD1, 1);
                break;
        }
        drawFootprint = false;
    }
    else
    {
        switch (facingDir)
        {
        case 0:
            part_particles_create(FootprintParticleSystem, x, y, part_snowprintD2, 1);
            break;
        case 1:
            part_particles_create(FootprintParticleSystem, x, y, part_snowprintRD2, 1);
            break;
        case 2:
            part_particles_create(FootprintParticleSystem, x, y, part_snowprintR2, 1);
            break;
        case 3:
            part_particles_create(FootprintParticleSystem, x, y, part_snowprintRU2, 1);
            break;
        case 4:
            part_particles_create(FootprintParticleSystem, x, y, part_snowprintU2, 1);
            break;
        case 5:
            part_particles_create(FootprintParticleSystem, x, y, part_snowprintLU2, 1);
            break;
        case 6:
            part_particles_create(FootprintParticleSystem, x, y, part_snowprintL2, 1);
            break;
        case 7:
            part_particles_create(FootprintParticleSystem, x, y, part_snowprintLD2, 1);
            break;
        }
        drawFootprint = false;
    }
}

if (drawSnowAngel == true)
{
    switch (playerState)
    {
        case State.Laying:
            if (facingDir = 0)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelLD1, 1)}
            if (facingDir = 1)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelRD1, 1)}
            if (facingDir = 2)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelRD1, 1)}
            if (facingDir = 3)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelRU1, 1)}
            if (facingDir = 4)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelRU1, 1)}
            if (facingDir = 5)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelLU1, 1)}
            if (facingDir = 6)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelLU1, 1)}
            if (facingDir = 7)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelLD1, 1)};
            break;
        case State.Laying2:
            if (facingDir = 0)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelLD2, 1)}
            if (facingDir = 1)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelRD2, 1)}
            if (facingDir = 2)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelRD2, 1)}
            if (facingDir = 3)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelRU2, 1)}
            if (facingDir = 4)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelRU2, 1)}
            if (facingDir = 5)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelLU2, 1)}
            if (facingDir = 6)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelLU2, 1)}
            if (facingDir = 7)
            {part_particles_create(FootprintParticleSystem, x, y, part_snowangelLD2, 1)};
            break;
        default: break;
    }
    drawSnowAngel = false;
}
