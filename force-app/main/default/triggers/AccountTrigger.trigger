trigger AccountTrigger on Account (before insert) {
    if(Trigger.isInsert)
    {
        if(Trigger.isBefore){
            AccountTriggerHandler.isBeforeInsert(trigger.new,trigger.newMap,trigger.oldMap);
        }
    }

    if(Trigger.isUpdate){
        if(Trigger.isBefore){
        }else {
            AccountTriggerHandler.isBeforeInsert(trigger.new,trigger.newMap,trigger.oldMap);
        }
    }
}