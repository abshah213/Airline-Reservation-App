trigger AccountTrigger on Account (before insert,before update) {
    
    
    
    
    if(trigger.isInsert)
    {

            if(trigger.isBefore)
            {
                AccountTriggerHandler.updateRating(trigger.New,null);
            }

	}

    
        if(trigger.isupdate)
    {

            if(trigger.isBefore)
            {
                AccountTriggerHandler.updateRating(trigger.New,trigger.oldMap);
            }

	}


}