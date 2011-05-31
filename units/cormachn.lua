-- UNITDEF -- CORMACHN --
--------------------------------------------------------------------------------

local unitName = "cormachn"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.08,
  ai_limit           = [[limit CORMachn 2]],
  ai_weight          = [[weight CORMachn 1.1]],
  bmcode             = 1,
  brakeRate          = 0.18,
  buildCostEnergy    = 58332,
  buildCostMetal     = 14744,
  builder            = false,
  buildTime          = 191096,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  cantBeTransported  = true,
  category           = [[ALL TANK WEAPON NOTSUB NOTAIR]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Assault All-Terrain allien vehicle]],
  designation        = [[TADDWARM]],
  downloadable       = 1,
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 25,
  explodeAs          = [[CRAWL_BLAST]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  frenchdescription  = [[Pisteur d'assaut ]],
  frenchname         = [[War Machine]],
  germandescription  = [[Anglar Angriffs - Kettenfahrzeug]],
  germanname         = [[War Machine]],
  maneuverleashlength = 640,
  maxDamage          = 127800,
  maxSlope           = 26,
  maxVelocity        = 1.1,
  maxWaterDepth      = 30,
  metalStorage       = 20,
  mobilestandorders  = 1,
  movementClass      = [[HTKBOT4]],
  name               = [[War Machine]],
  noAutoFire         = false,
  nochasecategory1   = [[VTOL]],
  objectName         = [[CORMachn]],
  ovradjust          = 1,
  radarDistance      = 0,
  selfDestructAs     = [[CRAWL_BLAST]],
  shootme            = 1,
  side               = [[CORE]],
  sightDistance      = 300,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  TEDClass           = [[TANK]],
  threed             = 1,
  turnRate           = 202,
  unitname           = [[cormachn]],
  unitnumber         = 2013,
  version            = 3.0,
  workerTime         = 0,
  zbuffer            = 1,
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    cant = {
      [[cantdo4]],
    },
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    ok = {
      [[krogok1]],
    },
    select = {
      [[krogsel1]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[WARM_GUN]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[WARM_ROCKET]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  WARM_GUN = {
    areaOfEffect       = 22,
    craterBoost        = 0,
    craterMult         = 0,
    explosionart       = [[parablast]],
    explosiongaf       = [[fx]],
    id                 = 242,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lavaexplosionart   = [[lavasplashsm]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    minbarrelangle     = -15,
    model              = [[WARM_gun]],
    name               = [[WARM Gauss Cannon]],
    noSelfDamage       = true,
    range              = 650,
    reloadtime         = 1.6,
    renderType         = 3,
    soundHit           = [[emgpuls2]],
    soundStart         = [[canzipX]],
    startsmoke         = 1,
    tolerance          = 500,
    turret             = true,
    waterexplosionart  = [[h2oboom1]],
    waterexplosiongaf  = [[fx]],
    weaponType         = [[Cannon]],
    weaponVelocity     = 450,
    damage = {
      default            = 350,
    },
  },
  WARM_ROCKET = {
    areaOfEffect       = 150,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.65,
    explosionart       = [[explode2]],
    explosiongaf       = [[fx]],
    fireStarter        = 70,
    flightTime         = 4,
    guidance           = true,
    id                 = 244,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lavaexplosionart   = [[lavasplash]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[WARM_missle]],
    name               = [[WARM Heavy Rockets]],
    noSelfDamage       = true,
    range              = 1200,
    reloadtime         = 11,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = .1,
    smokeTrail         = true,
    soundHit           = [[xplosml1]],
    soundStart         = [[rockhvy3]],
    startsmoke         = 1,
    startVelocity      = 250,
    tolerance          = 9000,
    tracks             = true,
    turnRate           = 63000,
    vlaunch            = true,
    waterexplosionart  = [[h2o]],
    waterexplosiongaf  = [[fx]],
    weaponAcceleration = 200,
    weaponTimer        = 2,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 550,
    damage = {
      default            = 1900,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[core_corpses]],
    damage             = 37000,
    description        = [[War Machine Wreckage]],
    energy             = 300,
    featureDead        = [[HEAP]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 40,
    hitdensity         = 100,
    metal              = 9136,
    object             = [[CORMachn_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 26000,
    description        = [[War Machine Dead]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 4,
    hitdensity         = 100,
    metal              = 3472,
    object             = [[4x4a]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
