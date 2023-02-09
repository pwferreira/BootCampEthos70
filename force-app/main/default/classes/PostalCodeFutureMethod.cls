global class PostalCodeFutureMethod
{
    @future(callout=true)
    public static void UpdateAddressAsync(ID id)
    {   
         Account acc = [SELECT Id,BillingPostalCode FROM Account WHERE ID = :id];

         Map<String,Object> result = PostalCodeCallout.GetAddress(acc.BillingPostalCode);
         acc.BillingStreet = (String) result.get('logradouro') + ', ' + (String) result.get('bairro');
         acc.BillingCity = (String) result.get('localidade') + ', ' + (String) result.get('uf');
         
    }
}