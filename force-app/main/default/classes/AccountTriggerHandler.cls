public class AccountTriggerHandler {
    
    public static List<Account> CreateAccounts(List<Account> acts)
    {
        for(Account a : acts)
            a.ShippingState = a.BillingState;
        return acts;
    }
    
    

}