/**
 * -------------------------------------------------------------------------------------
 * BTNetChristmas2019
 * -------------------------------------------------------------------------------------
 * A mutator which replaces all default player TalkTextures with Christmas versions.
 *
 * 2019 update: player spawn/teleport effects replaced with Christmas-themed particles.
 *
 * Made by Sapphire and Dizzy.
 *
 * Merry Christmas!
 *
 * https://bunnytrack.net/
 * https://github.com/bunnytrack/
 */

class BTNetChristmas2019v0 extends Mutator;

// Xan
#exec TEXTURE IMPORT NAME=boss5Xan FILE=Textures\BossSkins\boss5Xan.pcx GROUP=BossSkins

// Male commandos
#exec TEXTURE IMPORT NAME=cmdo5Blake    FILE=Textures\CommandoSkins\cmdo5Blake.pcx    GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=cmdo5Gorn     FILE=Textures\CommandoSkins\cmdo5Gorn.pcx     GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=cmdo5Nickolai FILE=Textures\CommandoSkins\cmdo5Nickolai.pcx GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=cmdo5Whitman  FILE=Textures\CommandoSkins\cmdo5Whitman.pcx  GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=daco5Boris    FILE=Textures\CommandoSkins\daco5Boris.pcx    GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=daco5Graves   FILE=Textures\CommandoSkins\daco5Graves.pcx   GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=daco5Luthor   FILE=Textures\CommandoSkins\daco5Luthor.pcx   GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=daco5Ramirez  FILE=Textures\CommandoSkins\daco5Ramirez.pcx  GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=goth5Grail    FILE=Textures\CommandoSkins\goth5Grail.pcx    GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=goth5Kragoth  FILE=Textures\CommandoSkins\goth5Kragoth.pcx  GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=goth5Malakai  FILE=Textures\CommandoSkins\goth5Malakai.pcx  GROUP=CommandoSkins
#exec TEXTURE IMPORT NAME=goth5Necrotic FILE=Textures\CommandoSkins\goth5Necrotic.pcx GROUP=CommandoSkins

// Female commandos
#exec TEXTURE IMPORT NAME=aphe5Indina  FILE=Textures\FCommandoSkins\aphe5Indina.pcx  GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=aphe5Portia  FILE=Textures\FCommandoSkins\aphe5Portia.pcx  GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=cmdo5Anna    FILE=Textures\FCommandoSkins\cmdo5Anna.pcx    GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=cmdo5gromida FILE=Textures\FCommandoSkins\cmdo5gromida.pcx GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=cmdo5Ivana   FILE=Textures\FCommandoSkins\cmdo5Ivana.pcx   GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=cmdo5Nikita  FILE=Textures\FCommandoSkins\cmdo5Nikita.pcx  GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=daco5Jayce   FILE=Textures\FCommandoSkins\daco5Jayce.pcx   GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=daco5Kyla    FILE=Textures\FCommandoSkins\daco5Kyla.pcx    GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=daco5Mariana FILE=Textures\FCommandoSkins\daco5Mariana.pcx GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=daco5Tanya   FILE=Textures\FCommandoSkins\daco5Tanya.pcx   GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=goth5Cryss   FILE=Textures\FCommandoSkins\goth5Cryss.pcx   GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=goth5Freylis FILE=Textures\FCommandoSkins\goth5Freylis.pcx GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=goth5maime   FILE=Textures\FCommandoSkins\goth5maime.pcx   GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=goth5Malise  FILE=Textures\FCommandoSkins\goth5Malise.pcx  GROUP=FCommandoSkins
#exec TEXTURE IMPORT NAME=goth5visse   FILE=Textures\FCommandoSkins\goth5visse.pcx   GROUP=FCommandoSkins

// Male soldiers
#exec TEXTURE IMPORT NAME=blkt5Malcom  FILE=Textures\SoldierSkins\blkt5Malcom.pcx  GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=blkt5Othello FILE=Textures\SoldierSkins\blkt5Othello.pcx GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=blkt5Riker   FILE=Textures\SoldierSkins\blkt5Riker.pcx   GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=Gard5Drake   FILE=Textures\SoldierSkins\Gard5Drake.pcx   GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=Gard5Radkin  FILE=Textures\SoldierSkins\Gard5Radkin.pcx  GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=Gard5Von     FILE=Textures\SoldierSkins\Gard5Von.pcx     GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=Gard5Wraith  FILE=Textures\SoldierSkins\Gard5Wraith.pcx  GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=hkil5Matrix  FILE=Textures\SoldierSkins\hkil5Matrix.pcx  GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=hkil5Tensor  FILE=Textures\SoldierSkins\hkil5Tensor.pcx  GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=hkil5Vector  FILE=Textures\SoldierSkins\hkil5Vector.pcx  GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=RawS5Arkon   FILE=Textures\SoldierSkins\RawS5Arkon.pcx   GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=RawS5Bruce   FILE=Textures\SoldierSkins\RawS5Bruce.pcx   GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=RawS5Kregore FILE=Textures\SoldierSkins\RawS5Kregore.pcx GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=RawS5Manwell FILE=Textures\SoldierSkins\RawS5Manwell.pcx GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=RawS5Slain   FILE=Textures\SoldierSkins\RawS5Slain.pcx   GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=SLDR5Brock   FILE=Textures\SoldierSkins\SLDR5Brock.pcx   GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=Sldr5Harlin  FILE=Textures\SoldierSkins\Sldr5Harlin.pcx  GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=SLDR5Johnson FILE=Textures\SoldierSkins\SLDR5Johnson.pcx GROUP=SoldierSkins
#exec TEXTURE IMPORT NAME=Sldr5Rankin  FILE=Textures\SoldierSkins\Sldr5Rankin.pcx  GROUP=SoldierSkins

// Female soldiers
#exec TEXTURE IMPORT NAME=Army5Lauren  FILE=Textures\SGirlSkins\Army5Lauren.pcx  GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Army5Rylisa  FILE=Textures\SGirlSkins\Army5Rylisa.pcx  GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Army5Sara    FILE=Textures\SGirlSkins\Army5Sara.pcx    GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Army5Shyann  FILE=Textures\SGirlSkins\Army5Shyann.pcx  GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=fbth5annaka  FILE=Textures\SGirlSkins\fbth5annaka.pcx  GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=fbth5aryss   FILE=Textures\SGirlSkins\fbth5aryss.pcx   GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=fbth5Azure   FILE=Textures\SGirlSkins\fbth5Azure.pcx   GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=fbth5olga    FILE=Textures\SGirlSkins\fbth5olga.pcx    GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=fbth5ryanna  FILE=Textures\SGirlSkins\fbth5ryanna.pcx  GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=fwar5Cathode FILE=Textures\SGirlSkins\fwar5Cathode.pcx GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=fwar5Fury    FILE=Textures\SGirlSkins\fwar5Fury.pcx    GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=fwar5Lilith  FILE=Textures\SGirlSkins\fwar5Lilith.pcx  GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Garf5Isis    FILE=Textures\SGirlSkins\Garf5Isis.pcx    GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Garf5Risa    FILE=Textures\SGirlSkins\Garf5Risa.pcx    GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Garf5Tasha   FILE=Textures\SGirlSkins\Garf5Tasha.pcx   GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Garf5Vixen   FILE=Textures\SGirlSkins\Garf5Vixen.pcx   GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Venm5Athena  FILE=Textures\SGirlSkins\Venm5Athena.pcx  GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Venm5Cilia   FILE=Textures\SGirlSkins\Venm5Cilia.pcx   GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Venm5Sarena  FILE=Textures\SGirlSkins\Venm5Sarena.pcx  GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Venm5Tara    FILE=Textures\SGirlSkins\Venm5Tara.pcx    GROUP=SGirlSkins
#exec TEXTURE IMPORT NAME=Venm5Zanna   FILE=Textures\SGirlSkins\Venm5Zanna.pcx   GROUP=SGirlSkins

// War cows
#exec TEXTURE IMPORT NAME="atomiccowface" FILE="Textures\TCowMeshSkins\atomiccowface.pcx" GROUP=TCowMeshSkins
#exec TEXTURE IMPORT NAME="COW-face"      FILE="Textures\TCowMeshSkins\COW-face.pcx"      GROUP=TCowMeshSkins
#exec TEXTURE IMPORT NAME="warcowface"    FILE="Textures\TCowMeshSkins\warcowface.pcx"    GROUP=TCowMeshSkins

// Nalis
#exec TEXTURE IMPORT NAME="nali-face"   FILE="Textures\TNaliMeshSkins\nali-face.pcx"   GROUP=TNaliMeshSkins
#exec TEXTURE IMPORT NAME="priest-face" FILE="Textures\TNaliMeshSkins\priest-face.pcx" GROUP=TNaliMeshSkins

// Skaarj
#exec TEXTURE IMPORT NAME=MekS5Disconnect FILE=Textures\TSkMSkins\MekS5Disconnect.pcx GROUP=TSkMSkins
#exec TEXTURE IMPORT NAME=MekS5Firewall   FILE=Textures\TSkMSkins\MekS5Firewall.pcx   GROUP=TSkMSkins
#exec TEXTURE IMPORT NAME=PitF5Baetal     FILE=Textures\TSkMSkins\PitF5Baetal.pcx     GROUP=TSkMSkins
#exec TEXTURE IMPORT NAME=PitF5Pharoh     FILE=Textures\TSkMSkins\PitF5Pharoh.pcx     GROUP=TSkMSkins
#exec TEXTURE IMPORT NAME=PitF5Skrilax    FILE=Textures\TSkMSkins\PitF5Skrilax.pcx    GROUP=TSkMSkins
#exec TEXTURE IMPORT NAME=Warr5Berserker  FILE=Textures\TSkMSkins\Warr5Berserker.pcx  GROUP=TSkMSkins
#exec TEXTURE IMPORT NAME=Warr5Dominator  FILE=Textures\TSkMSkins\Warr5Dominator.pcx  GROUP=TSkMSkins
#exec TEXTURE IMPORT NAME=warr5Guardian   FILE=Textures\TSkMSkins\warr5Guardian.pcx   GROUP=TSkMSkins
#exec TEXTURE IMPORT NAME=Warr5SuperFly   FILE=Textures\TSkMSkins\Warr5SuperFly.pcx   GROUP=TSkMSkins

var bool bInitialised;
var byte B;
var string PackageName;

function PreBeginPlay() {
	if (bInitialised) {
		return;
	}

	Level.Game.BaseMutator.AddMutator(self);
	bInitialised = true;

	PackageName = Left(self.Class, InStr(string(self.Class), "."));

	Log("");
	Log("+--------------------------------------------------------------------+");
	Log("| BTNetChristmas2019                                                 |");
	Log("| ------------------------------------------------------------------ |");
	Log("| Author: Sapphire <sapphire@bunnytrack.net>                         |");
	Log("+--------------------------------------------------------------------+");
	Log("");

	ReplaceVisibleTeleporters();
}

function ReplaceVisibleTeleporters() {
	local VisibleTeleporter Tel;

	foreach AllActors(class'VisibleTeleporter', Tel) {
		CheckReplacement(Tel, B);
	}
}

// Unfortunately a hacky Tick() function has to be used to replace UTTeleportEffect actors,
// as many of them are hardcoded into the game's Level.Game.PlayTeleportEffect() function.
function Tick(float Delta) {
	local UTTeleportEffect UTE;

	foreach AllActors(class'UTTeleportEffect', UTE) {
		if (string(UTE.Class) == "Botpack.UTTeleportEffect") {
			CheckReplacement(UTE, B);
			UTE.Destroy();
		}
	}
}

function bool CheckReplacement(Actor Other, out byte bSuperRelevant) {
	if (string(Other.Class) == "Botpack.UTTeleportEffect") {
		ReplaceWith(Other, PackageName $ ".ChristmasTeleportEffect");
		return false;
	}

	else if (string(Other.Class) == "Botpack.VisibleTeleporter") {
		ReplaceWith(Other, PackageName $ ".BTNetChristmasTeleporter");
		return false;
	}

	return true;
}

// Modified to include VisibleTeleporter URLs
function bool ReplaceWith(actor Other, string aClassName) {
	local Actor A;
	local class<Actor> aClass;

	if ( Other.IsA('Inventory') && (Other.Location == vect(0,0,0)) )
		return false;
	aClass = class<Actor>(DynamicLoadObject(aClassName, class'Class'));
	if ( aClass != None )
		A = Spawn(aClass,Other.Owner,Other.tag,Other.Location, Other.Rotation);
	if ( Other.IsA('Inventory') )
	{
		if ( Inventory(Other).MyMarker != None )
		{
			Inventory(Other).MyMarker.markedItem = Inventory(A);
			if ( Inventory(A) != None )
			{
				Inventory(A).MyMarker = Inventory(Other).MyMarker;
				A.SetLocation(A.Location
					+ (A.CollisionHeight - Other.CollisionHeight) * vect(0,0,1));
			}
			Inventory(Other).MyMarker = None;
		}
		else if ( A.IsA('Inventory') )
		{
			Inventory(A).bHeldItem = true;
			Inventory(A).Respawntime = 0.0;
		}
	}

	if ( A != None ) {
		A.event = Other.event;
		A.tag = Other.tag;

		if (   aClassName == (PackageName $ ".BTNetChristmasTeleporter")
			&& string(Other.Class) == "Botpack.VisibleTeleporter"
		) {
			BTNetChristmasTeleporter(A).URL = VisibleTeleporter(Other).URL;
		}

		return true;
	}

	return false;
}

// Called on player join.
function ModifyPlayer(Pawn Other) {
	local string  TalkTextureName;      // The name of the talk texture the player is currently using.
	local Texture ChristmasTalkTexture; // A texture variable which we'll try to load the Christmas version into.

	// Check if the Pawn is a PlayerPawn.
	if (PlayerPawn(Other) != none) {

		// Get the name of the texture.
		TalkTextureName = string(Other.PlayerReplicationInfo.TalkTexture);

		// Load the Christmas version.
		ChristmasTalkTexture = Texture(DynamicLoadObject(PackageName $ "." $ TalkTextureName, class'Texture'));

		// Ensure we don't load None (causes no talk texture to appear).
		if (ChristmasTalkTexture != none) {
			Other.PlayerReplicationInfo.TalkTexture = ChristmasTalkTexture;
		}

		// All faces should be available, but log this just in case.
		else {
			Log("Unable to load Christmas texture for \"" $ TalkTextureName $ "\"");
		}
	}

	if (NextMutator != none) {
		NextMutator.ModifyPlayer(Other);
	}
}