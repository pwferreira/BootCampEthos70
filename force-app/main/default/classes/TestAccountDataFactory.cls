public with sharing class TestAccountDataFactory {
    public static List<Account> CreateAccounts(Integer noOfAccountsToCreate) {

        
        List<Account> accounts = new List<Account>();
        
        for(Integer i=0;i<noOfAccountsToCreate;i++){
            Account acc = new Account(Name = 'Test' + i);
            accounts.add(acc);
        }

        return accounts;

    }
}