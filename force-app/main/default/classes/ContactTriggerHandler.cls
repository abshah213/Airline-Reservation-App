public class ContactTriggerHandler {


    
    
    public static void setValidationOnContact(List<Contact> conList)
    {


        Map<String,Contact> conMap = new Map<String,Contact> ();



        for(Contact con : [Select id,Email from Contact])
        {

               if(con.Email != null)
               {
                  conMap.put(con.Email, con);
               }

        }










        if(conMap.size() > 0)
        {

               for(Contact con : conList)
               {


                           if(conMap.get(con.Email) != null)
                           {

                                con.addError('Contact Already Existed!..');

                           }

               }

        }


	}

    
    
}