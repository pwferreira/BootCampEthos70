@isTest
public with sharing class TestAccountQtyTrigger {
    
    @isTest
    public static void TestAccountQtyTrigger(){
        
        Account[] accounts = TestAccountDataFactory.CreateAccounts(100);

        Test.startTest();

        insert accounts;

        Account[] assertAcounts = [SELECT Id FROM Account WHERE AccountQty__c > 0];

        Test.stopTest();

        System.assertEquals(100, assertAcounts.size(),'Não foram atualizados os registros esperados pelo teste');

    }



}