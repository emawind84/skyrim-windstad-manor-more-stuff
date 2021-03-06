Scriptname DSC03_QuestTrigger01 extends ReferenceAlias  

Quest Property QuestScript Auto

Event OnTriggerEnter(ObjectReference akActionRef)
    If akActionRef == Game.GetPlayer() ; This condition ensures that only the player will trigger this code
        Log("Player entered the quest trigger")
        Log("Starting the quest")
        
        QuestScript.Start()
        utility.wait(1)  ; give some time to the quest to start
        
        RegisterForSingleUpdate(2)
    EndIf
EndEvent

Event OnTriggerLeave(ObjectReference akActionRef)
    If akActionRef == Game.GetPlayer() ; This condition ensures that only the player will trigger this code
        Log("Player leaved the quest trigger")
        Log("Stopping the quest")
        
        QuestScript.Stop()
        QuestScript.Reset()
        utility.wait(1)  ; give some time to the quest to stop

        UnregisterForUpdate()  ; safe option just in case
    EndIf
EndEvent

Event OnUpdate()
    ;RegisterForSingleUpdate(2)
EndEvent

Function Log(String msg, String modname="DSC03")
    Debug.Trace("[" + modname + "] " + self + " " + msg)
EndFunction