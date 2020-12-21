trigger deleteAccounts on Account (before delete) {

    system.debug('in delete accounts trigger'+ Trigger.isDelete);
    //you have to before event and trigger.old as you are doing operation on records that
    // are already created/inserted and you are querying Id field which is system generated.
    List<Opportunity> opps = [SELECT Id,Name,Account.Id FROM Opportunity WHERE Account.Id IN : Trigger.old];
    List<Account> tobeDeleted = new List<Account>();
    for(Opportunity ac : opps)
    {
          // Don't try and wrap this up in a try catch block
          // if you do so, account record will be deleted after the exception is caught.
          // our aim is to stop the execution and not continue with it.
        	if(ac.Account.Id != null)
        	  throw new MyCustomException('This record can\'t be deleted');    
       
    }
}