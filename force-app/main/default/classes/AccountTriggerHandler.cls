public class AccountTriggerHandler {
    public static void isBeforeInsert(Account [] newAccounts, Map<Id,Account> newAccountMap,Map<Id,Account> oldAccountMap) {
        System.debug('AccountTriggerHandler isBeforeInsert');
        
        AggregateResult[] maxResult =  [SELECT MAX(AccountQty__c) MaxQty FROM Account ];
        List<Account> accountsToUpdate = new List<Account>();
                    
        Integer maxQty = Integer.valueOf(maxResult[0].get('MaxQty'));
        
        if(maxQty == null){
            maxQty = 1;
        }
        else{
            maxQty++;
        }

        for(Account acc : newAccounts){
            if(acc.AccountQty__c == null){
                acc.AccountQty__c = maxQty;
                maxQty++;
                accountsToUpdate.add(acc);
            }
        }

        if(accountsToUpdate.size() > 0){
            update accountsToUpdate;
        }
    }
    
    public static void IsAfterUpdate(Account [] newAccounts, Map<Id,Account> newAccountMap,Map<Id,Account> oldAccountMap) {
        System.debug('AccountTriggerHandler IsAfterUpdate');

        if(newAccounts.size() == 1){
            PostalCodeUpdate.UpdateAddressAsync(newAccounts[0].Id);
        }
    
    }

    //public static void isAfterInsert(Account [] accounts) {}
    //public static void IsBeforeUpdate(Account [] accounts) {}

}