class BTNetChristmasTeleporter extends VisibleTeleporter;

#exec AUDIO IMPORT NAME=SleighBells1 FILE=Sounds\SleighBells1.wav
#exec AUDIO IMPORT NAME=SleighBells2 FILE=Sounds\SleighBells2.wav

function PlayTeleportEffect(actor Incoming, bool bOut) {
	local ChristmasTeleportEffect CTE;

	if ( Incoming.bIsPawn && (Incoming.Mesh != None) ) {
		CTE = Spawn(class'ChristmasTeleportEffect', Incoming,, Incoming.Location, Incoming.Rotation);
		CTE.Initialize(Pawn(Incoming), bOut);

		if (Rand(2) == 1) {
			CTE.PlaySound(Sound'SleighBells1',, 10.0);
		} else {
			CTE.PlaySound(Sound'SleighBells2',, 10.0);
		}
	}
}