@RestResource(urlMapping='/Accounts/*/contacts')
global class AccountManager {
    @HttpGet
    global static Account getAccount() {
        RestRequest req = RestContext.request;
        
        String accId = req.requestURI.substringBetween('Accounts/', '/contacts');
        system.debug('**requestURI**** '+req.requestURI);
        system.debug('*******accId'+accId);
        Account acc = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) 
                       FROM Account WHERE Id = :accId limit 1];
		return acc;
    }
}