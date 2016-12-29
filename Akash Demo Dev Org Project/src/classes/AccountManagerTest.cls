@isTest
private class AccountManagerTest {

	private static testMethod void test() {
	   Account acc = new Account(name='test account');
	   insert acc;
	   Contact con = new contact(Accountid = acc.id,firstname='prachi',lastname='gadewar');
	   insert con;
	   RestRequest req = new RestRequest(); 
       RestResponse res = new RestResponse();

       req.requestURI = 'https://ap2.salesforce.com/services/apexrest/Accounts/'+acc.id+ '/contacts';
        req.httpMethod = 'Get';
        RestContext.request = req;
        RestContext.response = res;
	    Account accountrecord = AccountManager.getAccount();
	}

}