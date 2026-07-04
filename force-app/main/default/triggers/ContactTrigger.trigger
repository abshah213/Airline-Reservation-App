trigger ContactTrigger on Contact (before insert) {

    
        if(trigger.isinsert)
    {

         if(trigger.isbefore)
        {
            ContactTriggerHandler.setValidationOnContact(trigger.New);
        }


    }
    
    
}