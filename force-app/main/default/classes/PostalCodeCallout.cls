public with sharing class PostalCodeCallout {
    public static Map<String, Object> GetAddress(string zipCode) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://viacep.com.br/ws/' + zipCode + '/json/');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        Map<String, Object> results = new Map<String, Object>();

        if(response.getStatusCode() == 200) {
            // Deserialize the JSON string into collections of primitive data types.
             results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
           
        }

        return results;
    }
}