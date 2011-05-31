-- UNITDEF -- UPPERCUT --
--------------------------------------------------------------------------------

local unitName = "uppercut"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.015,
  activateWhenBuilt  = true,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.18,
  buildCostEnergy    = 165704,
  buildCostMetal     = 32404,
  builder            = false,
  buildTime          = 195000,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  cantBeTransported  = true,
  category           = [[MOBILE WEAPON NOTLAND NOTAIR ALL]],
  collisionvolumeoffsets = [[0 -10 0]],
  collisionvolumescales = [[42 42 156]],
  collisionvolumetype = [[Ell]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Tactical Nuclear Submarine]],
  designation        = [[ASM-ML6]],
  energyMake         = 250,
  energyStorage      = 2500,
  energyUse          = 0.4,
  explodeAs          = [[CRAWL_BLASTSML]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = [[sea]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 640,
  maxDamage          = 2870,
  maxVelocity        = 1.8,
  metalStorage       = 0,
  minWaterDepth      = 50,
  mobilestandorders  = 1,
  movementClass      = [[UBOAT4]],
  name               = [[Uppercut]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[uppercut]],
  radarDistance      = 0,
  seismicSignature   = 0,
  selfDestructAs     = [[CRAWL_BLAST]],
  side               = [[ARM CORE]],
  sightDistance      = 500,
  sonarDistance      = 750,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  TEDClass           = [[WATER]],
  turnRate           = 200,
  unitname           = [[uppercut]],
  waterline          = 42,
  workerTime         = 0,
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
      [[suarmmov]],
    },
    select = {
      [[suarmsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[UPPERCUT_ROCKET]],
    },
    [2]  = {
      def                = [[TAWF009_WEAPON]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 110,
    },
    [3]  = {
      def                = [[ARMSMART_TORPEDO]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 150,
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARMSMART_TORPEDO = {
    areaOfEffect       = 16,
    avoidFriendly      = false,
    burnblow           = true,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH2]],
    guidance           = true,
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    model              = [[torpedo]],
    name               = [[AdvancedTorpedo]],
    noSelfDamage       = true,
    propeller          = 1,
    range              = 600,
    reloadtime         = 2,
    renderType         = 1,
    selfprop           = true,
    soundHit           = [[xplodep1]],
    soundStart         = [[torpedo1]],
    startVelocity      = 120,
    tolerance          = 32767,
    tracks             = true,
    turnRate           = 12000,
    turret             = false,
    waterWeapon        = true,
    weaponAcceleration = 20,
    weaponTimer        = 3,
    weaponType         = [[TorpedoLauncher]],
    weaponVelocity     = 200,
    damage = {
      atl                = 375,
      default            = 250,
      krogoth            = 1000,
      l1subs             = 400,
      l2subs             = 400,
      l3subs             = 500,
      tl                 = 375,
    },
  },
  TAWF009_WEAPON = {
    areaOfEffect       = 16,
    avoidFriendly      = false,
    burnblow           = true,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH3]],
    guidance           = true,
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    model              = [[advtorpedo]],
    name               = [[AdvTorpedo]],
    noSelfDamage       = true,
    propeller          = 1,
    range              = 690,
    reloadtime         = 1.5,
    renderType         = 1,
    selfprop           = true,
    soundHit           = [[xplodep1]],
    soundStart         = [[torpedo1]],
    startVelocity      = 150,
    tolerance          = 32767,
    tracks             = true,
    turnRate           = 1750,
    turret             = false,
    waterWeapon        = true,
    weaponAcceleration = 25,
    weaponTimer        = 3,
    weaponType         = [[TorpedoLauncher]],
    weaponVelocity     = 220,
    damage = {
      atl                = 750,
      default            = 500,
      krogoth            = 1500,
      l1subs             = 250,
      l2subs             = 150,
      l3subs             = 250,
      tl                 = 750,
    },
  },
  UPPERCUT_ROCKET = {
    areaOfEffect       = 768,
    avoidFriendly      = false,
    collideFriendly    = false,
    commandfire        = true,
    craterBoost        = 1.5,
    craterMult         = 1,
    cruise             = 1,
    edgeEffectiveness  = 0.35,
    energypershot      = 105000,
    explosionGenerator = [[custom:FLASHNUKE768]],
    fireStarter        = 100,
    flightTime         = 400,
    guidance           = true,
    impulseBoost       = 0.5,
    impulseFactor      = 0.5,
    lineOfSight        = true,
    metalpershot       = 1050,
    model              = [[hcar_nuke1]],
    name               = [[UW_Nuke]],
    noautorange        = 1,
    propeller          = 1,
    range              = 5120,
    reloadtime         = 2,
    renderType         = 1,
    selfprop           = true,
    shakeduration      = 2,
    shakemagnitude     = 32,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[megaboom]],
    soundStart         = [[misicbm1]],
    startsmoke         = 1,
    stockpile          = true,
    stockpiletime      = 105,
    tolerance          = 4000,
    turnRate           = 32768,
    twoPhase           = true,
    vlaunch            = true,
    waterWeapon        = true,
    weaponAcceleration = 75,
    weaponTimer        = 5,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 525,
    damage = {
      anniddm            = 3000,
      blackhydra         = 14000,
      commanders         = 1600,
      default            = 6000,
      heavyunits         = 4000,
      hero               = 1100,
      krogoth            = 9000,
      seadragon          = 14000,
      t4mechs            = 9000,
      tech4              = 12000,
      upgadvtech2        = 4500,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = false,
    category           = [[arm_corpses]],
    damage             = 24000,
    description        = [[Uppercut Wreckage]],
    featurereclamate   = [[smudge01]],
    footprintX         = 6,
    footprintZ         = 6,
    height             = 4,
    hitdensity         = 100,
    metal              = 19230,
    object             = [[uppercut_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
