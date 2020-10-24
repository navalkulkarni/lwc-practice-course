public with sharing class FetchContact {
    
    @AuraEnabled(cacheable = true)
    public static List<Contact> getContacts(){
        try {
            public List<Contact> contactList = new List<Contact>();
            contactList = [SELECT Id,Name,Phone,Account.Name FROM Contact];
            return contactList;

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}
