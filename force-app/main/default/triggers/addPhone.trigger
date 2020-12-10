trigger addPhone on Account (before insert,after update) {

    if(trigger.isBefore){
        system.debug('is before');
        if(trigger.isInsert){
            system.debug('is insert');
            for(Account ac : trigger.new){
                ac.Phone = '9890080586';
            }
        }
    }

    //exception is thrown when you use trigger.new in after update
    // you can use trigger.old but records are read only in trigger.old.
    //you can't modify them.
    if(trigger.isAfter && trigger.isUpdate){
        System.debug('is after and is update');
        for(Account ac : trigger.new)
        {
            try {
                ac.Name = ac.Name + 'Updated';    
            } catch (Exception e) {
                System.debug(e);
            } finally {
                
            }
            
        }
            
    }

}