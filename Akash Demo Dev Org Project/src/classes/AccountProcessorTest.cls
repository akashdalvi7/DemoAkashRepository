@isTest
private class AccountProcessorTest {

	private static testMethod void test() {
        Account acc = new Account(name='test account');
	    insert acc;
	    List<Id> accIds = new List<Id>();
	    accIds.add(acc.id);
	    List<Contact> contactList = new List<Contact>();
	    Contact con = new contact(Accountid = acc.id,firstname='prachi',lastname='gadewar');
	    Contact con1 = new contact(Accountid = acc.id,firstname='prachi1',lastname='gadewar');
	    contactList.add(con);
	    contactList.add(con1);
	    insert contactList;
	    
	    test.starttest();
	    AccountProcessor.countContacts(accIds);
	    test.stoptest();
	}

}