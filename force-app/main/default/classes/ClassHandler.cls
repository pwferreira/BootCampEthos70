public with sharing class ClassHandler {

public static void Handle(){

    /*  ESTRUTUTURA DE DADOS */

    //lista de objetos
    //Permite objetos duplicados
    List<Account> accountList = new List<Account>(); 
    Account [] accountList2 = new List<Account>(); // aceita declareção e atribuição com sintaxe de array

    accountList.add(new Account(Name = 'Test'));

    //semelhante ao SortedSet do C#
    //Não permite itens repetidos
    Set<Account> accountSet = new Set<Account>();
    accountSet.add(new Account(Name = 'Test 1'));


    //semelhante ao Dictionary do C#
    //Necessário definir chave e valor
    //Chave não pode repetir, valor pode
    
    Map<Id,Account> accountMap = new Map<ID, Account>([SELECT Id, Name FROM Account LIMIT 10]);
    //extraindo do SOQL e colocando no MAP
    
    /* FIM ESTRUTURA DE DADOS */

}

}