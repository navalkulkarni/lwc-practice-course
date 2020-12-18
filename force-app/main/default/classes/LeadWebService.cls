global class LeadWebService {
    

    webservice static string createNewLead(string firstName,string lastName,string companyName,string phone,string email){
        try{
            Lead ld = new Lead();
        ld.FirstName = firstName;
        ld.LastName = lastName;
        ld.Company = companyName;
        ld.Phone = phone;
        ld.Email = email;
        insert ld;
        return ld.Id;
        }catch(Exception ex){
            return 'Error during processing';
        }
                
    }

}
