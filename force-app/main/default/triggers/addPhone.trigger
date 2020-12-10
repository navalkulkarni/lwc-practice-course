trigger addPhone on Account (before insert) {

    if(trigger.isBefore){
        system.debug('is before');
        if(trigger.isInsert){
            system.debug('is insert');
            for(Account ac : trigger.new){
                ac.Phone = '9890080586';
            }
        }
    }

}