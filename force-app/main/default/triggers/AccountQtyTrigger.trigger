trigger AccountQtyTrigger on Account (before insert) {
    
    Account[] accounts = Trigger.new;


    if(Trigger.isInsert)
    {
        if(Trigger.isBefore)
        {
            for(Account acc: accounts)
            {
                if(acc.AccountQty__c == 0){
                    acc.AccountQty__c = HandleAccountQty.Handle();
                }
            }
        }
    }
}