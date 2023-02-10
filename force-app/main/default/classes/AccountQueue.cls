public with sharing class AccountQueue implements Queueable{
   
   private Set<Account> newAccountsIds ;
   
    public AccountQueue(Set<Account> newAccountList) {
        this.newAccountsIds = newAccountsIds;
    }

    public void execute(QueueableContext context){

     
    }
}