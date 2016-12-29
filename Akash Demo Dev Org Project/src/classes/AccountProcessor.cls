public class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> accountIds){
        
        Map<Id,Account> MapAccount = new Map<Id,Account>();
        
        for(Contact con :[select id,AccountId from Contact where AccountId =: accountIds]){
            if(!MapAccount.containskey(con.AccountId))
            system.debug('Akash sample test');
                //MapAccount.put(con.AccountId,new Account(id=con.AccountId,Number_of_Contacts__c=0));
            //MapAccount.get(con.AccountId).Number_of_Contacts__c++;
            
        }
        update MapAccount.values();
    }
}