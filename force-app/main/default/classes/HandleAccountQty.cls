public with sharing class HandleAccountQty {
    public static Integer Handle() {
        AggregateResult[] maxResult =  [SELECT MAX(AccountQty__c) MaxQty FROM Account ];
                    
        Integer maxQty = Integer.valueOf(maxResult[0].get('MaxQty'));
        
        if(maxQty == null){
            maxQty = 1;
        }
        else{
            maxQty++;
        }

        return maxQty;

    }
}