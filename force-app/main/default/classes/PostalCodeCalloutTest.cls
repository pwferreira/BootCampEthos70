@isTest
public class PostalCodeCalloutTest {
    
    @isTest
    public static void TestCallout() {
        Test.setMock(HttpCalloutMock.class, new PostalCodeCalloutMock());
        Account acc = new Account(BillingPostalCode = '01001-000', Name='Test');

        Test.startTest();
        insert acc;
        Test.stopTest();

        Account expectedAccount = [SELECT ID, BillingStreet FROM Account LIMIT 1];

        System.assertEquals(expectedAccount.BillingStreet, 'Praça da Sé, Sé');
        

    }
}