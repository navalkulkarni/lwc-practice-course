public with sharing class FetchContact {
    
    @AuraEnabled(cacheable = true)
    public static List<Contact> getContacts(){
        try {
            List<Contact> contactList = new List<Contact>();
            contactList = [SELECT Id,Name,Phone,Email,Account.Name FROM Contact];
            return contactList;

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}
