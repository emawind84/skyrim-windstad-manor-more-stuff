Scriptname DSC_PlayerAliasScript extends ReferenceAlias  
{Script used in maintenance quest}

DSC_MainQuest Property QuestScript Auto

Event OnPlayerLoadGame()
    QuestScript.Maintenance()
EndEvent