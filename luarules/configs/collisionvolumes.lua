--[[  from Spring Wiki and source code, info about CollisionVolumeData
Spring.GetUnitCollisionVolumeData ( number unitID ) -> 
	number scaleX, number scaleY, number scaleZ, number offsetX, number offsetY, number offsetZ,
	number volumeType, number testType, number primaryAxis, boolean disabled

Spring.SetUnitCollisionVolumeData ( number unitID, number scaleX, number scaleY, number scaleZ,
					number offsetX, number offsetY, number offsetX,
					number vType, number tType, number Axis ) -> nil

Spring.SetUnitPieceCollisionVolumeData ( number unitID, number pieceIndex, boolean enabled, number scaleX, number scaleY, number scaleZ,
					number offsetX, number offsetY, number offsetZ, number vType, number Axis) -> nil
	per piece collision volumes always use COLVOL_TEST_CONT as tType
	above syntax is for 0.83, for 0.82 compatibility repeat enabled 3 more times
	
   possible vType constants
     DISABLED = -1  disables collision volume and collision detection for that unit, do not use
     ELLIPSOID = 0
     CYLINDER =  1
     BOX =       2
     SPHERE =    3
     FOOTPRINT = 4  intersection of sphere and footprint-prism, makes a sphere collision volume, default
	 
   possible tType constants, for non-sphere collision volumes use 1
     COLVOL_TEST_DISC = 0
     COLVOL_TEST_CONT = 1

   possible Axis constants, use non-zero only for Cylinder test
     COLVOL_AXIS_X = 0
     COLVOL_AXIS_Y = 1
     COLVOL_AXIS_Z = 2

   sample collision volume with detailed descriptions
	unitCollisionVolume["arm_advanced_radar_tower"] = {
		on=            -- Unit is active/open/poped-up 
		   {60,80,60,  -- Volume X scale, Volume Y scale, Volume Z scale,
		    0,15,0,    -- Volume X offset, Volume Y offset, Volume Z offset,
		    0,1,0},    -- vType, tType, axis}
		off={32,48,32,0,-10,0,0,1,0},
	}
	pieceCollisionVolume["arm_big_bertha"] = {
		["1"]={true,       -- [pieceIndexNumber]={enabled,
			   48,74,48,   --              Volume X scale, Volume Y scale, Volume Z scale,
		       0,0,0,      --              Volume X offset, Volume Y offset, Volume Z offset,
			   1,1}        --              vType, axis},
		["2"]={false},
		....
	}

]]--


--Collision volume definitions, ones entered here are for TA, for other mods modify apropriatly
local unitCollisionVolume = {}			--dynamic collision volume definitions
local pieceCollisionVolume = {}			--per piece collision volume definitions
local dynamicPieceCollisionVolume = {}	--dynamic per piece collision volume definitions

	unitCollisionVolume["armarad"] = {
		on={66,80,66,0,15,0,0,1,0},    --{Xscale,Yscale,Zscale, Xoffset,Yoffset,Zoffset, vType,tType,axis}
		off={32,51,32,0,-9,0,0,1,0},
	}
	unitCollisionVolume["armason"] = {
		on={57,60,57,0,-7,0,0,1,0},
		off={24,34,24,0,10,0,0,1,0},
	}
	unitCollisionVolume["armamb"] = {
		on={49,45,49,-0.5,-14,0,0,1,0},
		off={49,26,49,-0.5,-14,0,0,1,0},
	}
	unitCollisionVolume["armanni"] = {
		on={54,81,54,0,-2,0,2,1,0},
		off={54,56,54,0,-15,0,2,1,0},
	}
	unitCollisionVolume["armlab"] = {
		on={95,28,95,0,2,0,2,1,0},
		off={95,22,95,0,-1,0,1,1,1},
	}
	unitCollisionVolume["armmmkr"] = {
		on={60,72,60,0,7,0,1,1,1},
		off={60,50,60,0,-4,0,1,1,1},
	}
	unitCollisionVolume["armpb"] = {
		on={39,88,39,0,-11,0,0,1,0},
		off={39,55,39,0,-27,0,0,1,0},
	}
	unitCollisionVolume["armplat"] = {
		on={105,66,105,0,33,0,2,1,0},
		off={105,44,105,0,0,0,2,1,0},
	}
	unitCollisionVolume["armsolar"] = {
		on={83,76,83,0,-18,1,0,1,0},
		off={50,76,50,0,-18,1,0,1,0},
	}
	unitCollisionVolume["armtarg"] = {
		on={62,34,62,0,0,0,2,1,0},
		off={55,78,55,0,-19.5,0,0,1,0},
	}
	unitCollisionVolume["armvp"] = {
		on={120,34,92,0,0,0,2,1,0},
		off={90,34,92,0,0,0,2,1,0},
	}
	unitCollisionVolume["cordoom"] = {
		on={63,112,63,0,12,0,1,1,1},
		off={45,87,45,0,0,0,2,1,0},
	}
	unitCollisionVolume["corfmkr"] = {
		on={48,46,48,0,0,0,0,1,0},
		off={48,43,48,0,-16,0,0,1,0},
	}
	unitCollisionVolume["corgant"] = {
		on={118,96,130,0,-21,0,1,1,2},
		off={110,66,130,0,-21,0,1,1,2},
	}
	unitCollisionVolume["cormexp"] = {
		on={83,77,78,0,-27,0,0,1,0},
		off={90,135,84,0,-27,0,0,1,0},
	}
	unitCollisionVolume["cormmkr"] = {
		on={60,60,60,0,0,0,1,1,1},
		off={50,92,50,0,-22.5,0,0,1,0},
	}
	unitCollisionVolume["corplat"] = {
		on={112,60,112,0,28,0,1,1,1},
		off={112,35,112,0,0,0,1,1,1},
	}
	unitCollisionVolume["corsolar"] = {
		on={86,78,86,0,-25,0,0,1,0},
		off={77,78,77,0,-35,0,0,1,0},
	}
	unitCollisionVolume["cortarg"] = {
		on={64,20,64,0,0,0,1,1,1},
		off={38,20,38,0,0,0,1,1,1},
	}
	unitCollisionVolume["cortoast"] = {
		on={44,23,44,0,4,0,2,1,0},
		off={44,7,44,0,-3.3,0,2,1,0},
	}
	unitCollisionVolume["corvipe"] = {
		on={39,86,39,0,-10,0,0,1,0},
		off={39,55,39,0,-27,0,0,1,0},
	}
	unitCollisionVolume["packo"] = {
		on={49,51,49,-0.5,-10,0,0,1,0},
		off={49,23,49,-0.5,-10,0,0,1,0},
	}
	unitCollisionVolume["shiva"] = {
		on={54,50,50,0,2,-1,0,1,0},
		off={54,45,50,0,-4,-1,0,1,0},
	}
	unitCollisionVolume["tllobliterator"] = {
		on={73,57,84,0,-7,6,0,1,0},
		off={73,38,60,0,-12,0,0,1,0},
	}	
		
	pieceCollisionVolume["armbrtha"] = {
			["0"]={true,32,80,32,0,20,0,1,1},
			["2"]={true,26,30,70,0,0,14,1,2},
			["1"]={false},
			["3"]={true,8,8,42,0,1,94,1,2},
			["4"]={false},	
	}
			
	pieceCollisionVolume["arm_big_bertha"] = {
		["0"]={true,28,74,28,0,34,0,1,1},
		["2"]={true,15,15,113,0,0,30,1,2},
		["1"]={false},
		["3"]={false},
		["4"]={false},
	}
	dynamicPieceCollisionVolume["tllsealock"] = {
		on = {
			["13"]={true,116,122,32,26,6,0,2,0},
			["10"]={true,116,122,32,-26,6,0,2,0},
			["1"]={false},
			["2"]={false},
			["3"]={false},
			["4"]={false},
			["6"]={false},
			["7"]={false},
			["8"]={false},
			["9"]={false},
			["0"]={false},
			["11"]={false},
			["12"]={false},
			["5"]={false},
			["14"]={false},
			["15"]={false},
			["16"]={false},
			
		},
		off = {
			["12"]={true,56,132,40,-22,6,0,2,0},
			["9"]={true,56,132,40,22,6,0,2,0},
			["1"]={false},
			["2"]={false},
			["3"]={false},
			["4"]={false},
			["6"]={false},
			["7"]={false},
			["8"]={false},
			["10"]={false},
			["0"]={false},
			["11"]={false},
			["13"]={false},
			["5"]={false},
			["14"]={false},
			["15"]={false},
			["16"]={false},
		}
	}
		
return unitCollisionVolume, pieceCollisionVolume, dynamicPieceCollisionVolume