class ChristmasTeleportEffect extends UTTeleportEffect;

#exec MESH IMPORT MESH=UTTeleEffect ANIVFILE=MODELS\tele2_a.3D DATAFILE=MODELS\tele2_d.3D
#exec MESH ORIGIN MESH=UTTeleEffect X=0 Y=0 Z=-200 YAW=64
#exec MESH SEQUENCE MESH=UTTeleEffect SEQ=All  STARTFRAME=0  NUMFRAMES=30
#exec MESH SEQUENCE MESH=UTTeleEffect  SEQ=Burst  STARTFRAME=0  NUMFRAMES=30
#exec MESHMAP SCALE MESHMAP=UTTeleEffect X=0.06 Y=0.06 Z=0.16

#exec TEXTURE IMPORT NAME=FlareBell       FILE=Textures\TeleEffect\FlareBell.pcx
#exec TEXTURE IMPORT NAME=FlareCane       FILE=Textures\TeleEffect\FlareCane.pcx
#exec TEXTURE IMPORT NAME=FlareHat        FILE=Textures\TeleEffect\FlareHat.pcx
#exec TEXTURE IMPORT NAME=FlareHolly      FILE=Textures\TeleEffect\FlareHolly.pcx
#exec TEXTURE IMPORT NAME=FlarePresent    FILE=Textures\TeleEffect\FlarePresent.pcx
#exec TEXTURE IMPORT NAME=FlareSnowflake1 FILE=Textures\TeleEffect\FlareSnowflake1.pcx
#exec TEXTURE IMPORT NAME=FlareSnowflake2 FILE=Textures\TeleEffect\FlareSnowflake2.pcx
#exec TEXTURE IMPORT NAME=FlareSnowflake3 FILE=Textures\TeleEffect\FlareSnowflake3.pcx

auto state Explode
{
	simulated function Tick(float DeltaTime) {
		local rotator newrot;

		if ( !Level.bHighDetailMode )
		{
			bOwnerNoSee = true;
			Disable('Tick');
			return;
		}

		if ( Level.NetMode == NM_DedicatedServer )
		{
			Disable('Tick');
			return;
		}

		ScaleGlow = (Lifespan/Default.Lifespan);
		LightBrightness = ScaleGlow*210.0;

		if ( !Level.bHighDetailMode )
		{
			LightRadius = 6;
			return;
		}
	}

	simulated function BeginState() {
		PlaySound(EffectSound1,, 0.5,, 500);
		PlayAnim('All', 0.6);

		switch (Rand(3)) {
			case 0:
				MultiSkins[0] = Texture'FlareBell';
				MultiSkins[1] = Texture'FlareCane';
				MultiSkins[2] = Texture'FlareHolly';
				MultiSkins[3] = Texture'UnrealShare.Effects.T_PBurst';
				MultiSkins[4] = Texture'UnrealShare.Effects.T_PBurst';
			break;

			case 1:
				MultiSkins[0] = Texture'FlareSnowflake1';
				MultiSkins[1] = Texture'FlareSnowflake2';
				MultiSkins[2] = Texture'FlareSnowflake3';
				MultiSkins[3] = Texture'UnrealShare.Effects.T_PBurst';
				MultiSkins[4] = Texture'UnrealShare.Effects.T_PBurst';
			break;

			case 2:
				MultiSkins[0] = Texture'FlareHat';
				MultiSkins[1] = Texture'FlarePresent';
				MultiSkins[2] = Texture'UnrealShare.Effects.T_PBurst';
				MultiSkins[3] = Texture'UnrealShare.Effects.T_PBurst';
				MultiSkins[4] = Texture'UnrealShare.Effects.T_PBurst';
				MultiSkins[5] = Texture'UnrealShare.Effects.T_PBurst';
				MultiSkins[6] = Texture'UnrealShare.Effects.T_PBurst';
				MultiSkins[7] = Texture'UnrealShare.Effects.T_PBurst';
			break;
		}
	}
}

defaultproperties {
	MultiSkins(0)=none
	MultiSkins(1)=none
	MultiSkins(2)=none
	MultiSkins(3)=none
	MultiSkins(4)=none
	MultiSkins(5)=none
	MultiSkins(6)=none
	MultiSkins(7)=none
}
