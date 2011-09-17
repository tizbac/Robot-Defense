-- UNITDEF -- VE_CHICKENQR --
--------------------------------------------------------------------------------

local unitName = "ve_chickenqr"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.0666,
  activateWhenBuilt  = true,
  autoHeal           = 32,
  bmcode             = 1,
  brakeRate          = 0.02666,
  buildCostEnergy    = 2666666,
  buildCostMetal     = 666666,
  buildTime          = 3666666,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  cantBeTransported  = true,
  capturable         = false,
  category           = [[ALL HUGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL]],
  collisionvolumeoffsets = [[0 0 -4]],
  collisionvolumescales = [[300 400 208]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  corpse             = [[Dead]],
  customparams = {
	paralyzemultiplier = 0,
  },
  damageModifier     = 0.666,
  defaultmissiontype = [[Standby]],
  description        = [[All Robots Lord and Master]],
  designation        = [[ARM-EX-DNW666]],
  energyMake         = 666,
  energyStorage      = 6666,
  energyUse          = 0,
  explodeAs          = [[ATOMIC_NUKE1]],
  firestandorders    = 1,
  footprintX         = 11,
  footprintZ         = 11,
  iconType           = [[krogoth]],
  idleAutoHeal       = 6666.66,
  idleTime           = 900,
  immunetoparalyzer  = 1,
  isTargetingUpgrade = true,
  maneuverleashlength = 666,
  mass               = 6666666,
  maxDamage          = 187500,
  maxSlope           = 17,
  maxVelocity        = 2.666,
  maxWaterDepth      = 666,
  metalMake          = 6.66,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[VKBOT9]],
  name               = [[Robot King]],
  noChaseCategory    = [[VTOL]],
  objectName         = [[fh_chickenqr]],
  radarDistance      = 2666,
  reclaimable        = false,
  selfDestructAs     = [[ATOMIC_NUKE1]],
  side               = [[ARM]],
  sightDistance      = 1066.6,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  turnRate           = 366.6,
  unitname           = [[ve_chickenqr]],
  unitRestricted     = 1,
  upright            = true,
  weapon1_badtargetcategory = [[VTOL]],
  weapon2_badtargetcategory = [[VTOL]],
  weapon9_badtargetcategory = [[NOTAIR]],
  sfxtypes = {
    explosiongenerators = {
      [[custom:EyesWhite]],
      [[custom:EyesRed]],
    },
  },
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[orcua]],
    arrived = {
      [[orcthere]],
    },
    cant = {
      [[orcant]],
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
      [[orcmove]],
    },
    select = {
      [[orcsel1]],
      [[orcsel2]],
    },
  },
  weapons = {
    [1]  = {
      def                = [[RK_CANNON]],
    },
    [2]  = {
      def                = [[RK_CANNON]],
    },
    [3]  = {
      def                = [[ARMFLAK_GUN]],
    },
    [4]  = {
      def                = [[ARMFLAK_GUN]],
    },
    [5]  = {
      def                = [[BeamATADR]],
      mainDir            = [[-0.3 0 1]],
      maxAngleDif        = 120,
    },
    [6]  = {
      def                = [[BeamATADR]],
      mainDir            = [[0.3 0 1]],
      maxAngleDif        = 120,
    },
    [7]  = {
      def                = [[RKFLAME]],
      mainDir            = [[-0.3 0 1]],
      maxAngleDif        = 170,
    },
    [8]  = {
      def                = [[DNWFLAME]],
      mainDir            = [[0.3 0 1]],
      maxAngleDif        = 170,
    },
    [9]  = {
      def                = [[CORE_ADVSAM1]],
    },
    [10] = {
      def                = [[RKEyeCannon]],
    },
    [11] = {
      def                = [[KROGCRUSH1]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 200,
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARMFLAK_GUN = {
    accuracy           = 1000,
    areaOfEffect       = 192,
    avoidFriendly      = false,
    ballistic          = true,
    burnblow           = true,
    canattackground    = false,
    collideFriendly    = false,
    color              = 1,
    craterBoost        = 0,
    craterMult         = 0,
    cylinderTargetting = 1,
    edgeEffectiveness  = 0.85,
    explosionGenerator = [[custom:FLASH3]],
    gravityaffected    = [[true]],
    impulseBoost       = 0,
    impulseFactor      = 0,
    minbarrelangle     = -24,
    name               = [[FlakCannon]],
    noSelfDamage       = true,
    predictBoost       = 1,
    range              = 775,
    reloadtime         = 0.55,
    renderType         = 4,
    soundHit           = [[flakhit]],
    soundStart         = [[flakfire]],
    startsmoke         = 1,
    toAirWeapon        = true,
    turret             = true,
    unitsonly          = 1,
    weaponTimer        = 1,
    weaponType         = [[Cannon]],
    weaponVelocity     = 2450,
    damage = {
		default = 5,
		bombers = 750,
		fighters = 750,
		flak_resistant = 250,
		unclassed_air = 750,
    },
  },
  BeamATADR = {
    areaOfEffect       = 18,
    beamlaser          = 1,
    beamTime           = 0.15,
    coreThickness      = 0.3,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 475,
    explosionGenerator = [[custom:FLASH3blue]],
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    laserFlareSize     = 22,
    lineOfSight        = true,
    name               = [[BeamATAD]],
    noSelfDamage       = true,
    range              = 1045,
    reloadtime         = 0.1,
    renderType         = 0,
    rgbColor           = [[0.35 0 1]],
    soundHit           = [[burn02]],
    soundStart         = [[build2]],
    targetMoveError    = 0.1,
    thickness          = 7,
    tolerance          = 10000,
    turret             = true,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 2000,
    damage = {
		chicken = 380,
		commanders  = 80,
		default = 280,
		experimental_land = 500,
		experimental_ships = 500,
		subs = 5,
		tinychicken = 380,

    },
  },
  CORE_ADVSAM1 = {
    areaOfEffect       = 330,
    canattackground    = false,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0,
    explosionGenerator = [[custom:FLASHSMALLBUILDINGEX]],
    fireStarter        = 90,
    flightTime         = 3,
    guidance           = true,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lineOfSight        = true,
    model              = [[ADVSAM]],
    name               = [[upg ADVSAM]],
    noSelfDamage       = true,
    proximityPriority  = -1.5,
    range              = 2800,
    reloadtime         = 8,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0,
    smokeTrail         = true,
    soundHit           = [[impact]],
    soundStart         = [[launch]],
    startsmoke         = 1,
    startVelocity      = 800,
    texture2           = [[coresmoketrail]],
    toAirWeapon        = true,
    tolerance          = 10000,
    tracks             = true,
    trajectoryHeight   = 0.55,
    turnRate           = 139000,
    turret             = true,
    weaponAcceleration = 300,
    weaponTimer        = 8,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 1800,
    damage = {
		default = 5,
		bombers = 1750,
		fighters = 1750,
		flak_resistant = 1750,
		unclassed_air = 1750,
    },
  },
  RKFLAME = {
    areaOfEffect       = 75,
    avoidFeature       = false,
    burst              = 13,
    burstrate          = 0.01,
    craterBoost        = 0,
    craterMult         = 0,
    endsmoke           = 0,
    fireStarter        = 100,
    flameGfxTime       = 1.9,
    groundbounce       = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    intensity          = 0.9,
    lineOfSight        = true,
    name               = [[FlameThrower]],
    noSelfDamage       = true,
    proximityPriority  = 3,
    randomdecay        = 0.2,
    range              = 700,
    reloadtime         = 0.6,
    renderType         = 5,
    rgbColor           = [[1 0.95 0.9]],
    rgbColor2          = [[0.9 0.85 0.8]],
    sizeGrowth         = 1.2,
    smokedelay         = 1,
    soundStart         = [[Flamhvy1]],
    soundTrigger       = false,
    sprayAngle         = 9600,
    startsmoke         = 0,
    targetMoveError    = 0.001,
    tolerance          = 2500,
    turret             = true,
    weaponTimer        = 1,
    weaponType         = [[Flame]],
    weaponVelocity     = 450,
    damage = {
		commanders         = 24,
		default            = 30,
		bombers = 8,
		fighters = 8,
		flak_resistant = 8,
		unclassed_air = 8,
		subs             = 5,

    },
  },
  RK_CANNON = {
    accuracy           = 100,
    areaOfEffect       = 166.6,
    avoidFeature       = false,
    avoidFriendly      = true,
    beamTime           = 0.1666,
    beamWeapon         = true,
    cegTag             = [[bluelight]],
    coreThickness      = 0.666,
    craterBoost        = 0.123,
    craterMult         = 0.123,
    duration           = 0.1,
    edgeEffectiveness  = 0.25,
    energypershot      = 6666,
    explosionGenerator = [[custom:particleboom]],
    impulseBoost       = 0.123,
    impulseFactor      = 1,
    lineOfSight        = true,
    name               = [[Mega Particle Cannon]],
    noSelfDamage       = true,
    range              = 1900,
    reloadtime         = 0.666,
    renderType         = 0,
    rgbColor           = [[0 0 0.666]],
    rgbColor2          = [[0.666 0.666 1]],
    soundHit           = [[xplomed2]],
    soundHitVolume     = 8,
    soundStart         = [[Orcfire]],
    thickness          = 17,
    tolerance          = 1666,
    turret             = true,
    weaponType         = [[LaserCannon]],
    weaponVelocity     = 2666,
    damage = {
		chicken = 4666,
		commanders  = 666,
		default = 3200,
		experimental_land = 6666,
		experimental_ships = 6666,
		subs = 5,
		tinychicken = 4666,
    },
  },
  RKEyeCannon = {
    areaOfEffect       = 366.6,
    avoidFeature       = false,
    beamlaser          = 1,
    beamTime           = 1.666,
    burnblow           = true,
    coreThickness      = 0.666,
    craterBoost        = 0,
    craterMult         = 0,
    endsmoke           = 1,
    energypershot      = 2666,
    explosionGenerator = [[custom:DIESMALL]],
    fireStarter        = 66.6,
    impulseBoost       = 0,
    largeBeamLaser     = true,
    laserFlareSize     = 16.66,
    lineOfSight        = true,
    maxbarrelangle     = 20,
    minbarrelangle     = -60,
    name               = [[Dark Antimatter accelerator]],
    noExplode          = false,
    noSelfDamage       = true,
    pitchtolerance     = 3000,
    range              = 1666,
    reloadtime         = 3.666,
    renderType         = 4,
    rgbColor           = [[0 0 0.666]],
    rgbColor2          = [[0.666 0.666 1]],
    soundHit           = [[thunder_clap]],
    soundHitVolume     = 12,
    soundStart         = [[arrfire]],
    soundStartVolume   = 12,
    soundTrigger       = true,
    startsmoke         = 1,
    targetMoveError    = 0.5,
    texture1           = [[Type6Beam]],
    texture2           = [[NULL]],
    texture3           = [[NULL]],
    texture4           = [[EMG4]],
    thickness          = 25,
    tolerance          = 5000,
    turret             = true,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 1666,
    damage = {
		chicken = 3666,
		commanders  = 1666,
		default = 2666,
		experimental_land = 4666,
		experimental_ships = 4666,
		subs = 5,
		tinychicken = 3666,
    },
  },
  KROGCRUSH1 = {
    areaOfEffect       = 150,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:KROGCRUSHE]],
    impulseBoost       = 0.234,
    impulseFactor      = 0.234,
    intensity          = 0,
    lineOfSight        = false,
    metalpershot       = 0,
    name               = [[SuperKrogCrush]],
    noSelfDamage       = true,
    range              = 155,
    reloadtime         = 0.75,
    renderType         = 4,
    rgbColor           = [[0 0 0]],
    thickness          = 0,
    tolerance          = 100,
    turret             = true,
    weaponTimer        = 0.1,
    weaponType         = [[Cannon]],
    weaponVelocity     = 650,
    damage = {
     	default = 1000,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  Dead = {
    blocking           = true,
    category           = [[corpses]],
    damage             = 266666,
    description        = [[Wrecked Robot King]],
    featureDead        = [[fallen]],
    featurereclamate   = [[smudge01]],
    footprintX         = 12,
    footprintZ         = 12,
    height             = 190,
    hitdensity         = 100,
    metal              = 400000,
    object             = [[armdnw_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  fallen = {
    blocking           = true,
    category           = [[corpses]],
    damage             = 106666,
    description        = [[Fallen Robot King]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 12,
    footprintZ         = 15,
    height             = 100,
    hitdensity         = 100,
    metal              = 240000,
    object             = [[armdnw_fallen]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 42666,
    description        = [[Robot King Heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 7,
    footprintZ         = 7,
    height             = 4,
    hitdensity         = 100,
    metal              = 94800,
    object             = [[7x7d]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
