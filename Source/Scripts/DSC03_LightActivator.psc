Scriptname DSC03_LightActivator extends ReferenceAlias  

ReferenceAlias Property ActivatorAlias Auto

Event OnActivate(ObjectReference akActionRef)
    If akActionRef == Game.GetPlayer() ; This condition ensures that only the player will trigger this code
        self.GetRef().Disable()
        ActivatorAlias.GetRef().Enable()
    EndIf
EndEvent

Function Log(String msg, String modname="DSC03")
    Debug.Trace("[" + modname + "] " + self + " " + msg)
EndFunction