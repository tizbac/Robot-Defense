-- UNITDEF -- COREMECH --
--------------------------------------------------------------------------------

local unitName = "coremech"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.05,
  ai_limit           = [[limit coreMech 12]],
  ai_weight          = [[weight coreMech 4.4]],
  bmcode             = 1,
  brakeRate          = 0.18,
  buildCostEnergy    = 20842,
  buildCostMetal     = 1321,
  builder            = false,
  buildTime          = 42663,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Hunter mECh]],
  designation        = [[TADDMCH]],
  downloadable       = 1,
  energyMake         = 1.4,
  energyStorage      = 0,
  energyUse          = 1.4,
  explodeAs          = [[SMALL_UNITEX]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  maneuverleashlength = 640,
  maxDamage          = 8342,
  maxSlope           = 18,
  maxVelocity        = 1.5,
  maxWaterDepth      = 25,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[HKBOT4]],
  name               = [[Slaughter]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[coreMech]],
  ovradjust          = 1,
  radarDistance      = 0,
  selfDestructAs     = [[SMALL_UNIT]],
  shootme            = 1,
  side               = [[CORE]],
  sightDistance      = 280,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  threed             = 1,
  turnRate           = 444,
  unitname           = [[coremech]],
  unitnumber         = 2222,
  upright            = true,
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
      [[mavbok1]],
    },
    select = {
      [[mavbsel1]],
    },
  },
  weapons = {
    [1]  = {
      def                = [[ARMMECH_CANNON]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[TAWF114_weapon]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [3]  = {
      def                = [[ARMMECH_ROCKET]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARMMECH_CANNON = {
    areaOfEffect       = 12,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH211]],
    fireStarter        = 5,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    name               = [[MechPlasmaCannon]],
    noSelfDamage       = true,
    range              = 350,
    reloadtime         = 0.8,
    renderType         = 4,
    soundHit           = [[XploMed21]],
    soundStart         = [[KroGun1]],
    soundwater         = [[SplsSml]],
    startsmoke         = 1,
    targetMoveError    = 0.15,
    turret             = true,
    weaponTimer        = 2,
    weaponType         = [[Cannon]],
    weaponVelocity     = 600,
    damage = {
      default            = 185,
      gunships           = 60,
      hgunships          = 60,
      l1bombers          = 60,
      l1fighters         = 60,
      l1subs             = 5,
      l2bombers          = 60,
      l2fighters         = 60,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 60,
      vtol               = 60,
      vtrans             = 60,
    },
  },
  ARMMECH_ROCKET = {
    areaOfEffect       = 40,
    energypershot      = 80,
    explosionart       = [[explode3]],
    explosiongaf       = [[fx]],
    fireStarter        = 0,
    flightTime         = 1,
    guidance           = true,
    id                 = 221,
    lavaexplosionart   = [[lavasplash]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    model              = [[AgamRocket]],
    name               = [[Mech-Guided Rocket Launcher]],
    range              = 724,
    reloadtime         = 1.4,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = .1,
    smokeTrail         = true,
    soundHit           = [[MechRocket2]],
    soundStart         = [[MechRocket]],
    startsmoke         = 1,
    startVelocity      = 314,
    tolerance          = 6000,
    tracks             = true,
    turnRate           = 200000,
    turret             = true,
    waterexplosionart  = [[h2o]],
    waterexplosiongaf  = [[fx]],
    weaponAcceleration = 205,
    weaponTimer        = 3,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 773,
    damage = {
      default            = 129,
    },
  },
  TAWF114_weapon = {
    areaOfEffect       = 55,
    energypershot      = 250,
    explosionart       = [[smallboom]],
    explosiongaf       = [[towers]],
    fireStarter        = 20,
    guidance           = true,
    id                 = 228,
    lavaexplosionart   = [[lavasplashlg]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    metalpershot       = 14,
    model              = [[TAWF114a]],
    name               = [[Banisher]],
    range              = 680,
    reloadtime         = 4.5,
    renderType         = 1,
    selfprop           = true,
    shakeduration      = 1,
    shakemagnitude     = 10,
    smokedelay         = .0091,
    smokeTrail         = true,
    soundHit           = [[TAWF114b]],
    soundStart         = [[TAWF114a]],
    startsmoke         = 1,
    startVelocity      = 250,
    tolerance          = 9000,
    tracks             = true,
    turnRate           = 33000,
    turret             = true,
    waterexplosionart  = [[h2oboom2]],
    waterexplosiongaf  = [[fx]],
    weaponAcceleration = 70,
    weaponTimer        = 5,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 310,
    damage = {
      default            = 550,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[core_corpses]],
    damage             = 6600,
    description        = [[Slaughter Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 8,
    hitdensity         = 100,
    metal              = 845,
    object             = [[coreMech_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 4800,
    description        = [[Slaughter Heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = 325,
    object             = [[2x2c]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
