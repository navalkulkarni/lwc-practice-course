import { LightningElement, wire } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';
import getContacts from '@salesforce/apex/FetchContact.getContacts';
export default class ContactDisplayWithWireFunction extends NavigationMixin(LightningElement) {

    contacts;
    errorDetails;
    contactId;

    @wire(getContacts)
    checkNameOfAccount({error,data}){
        if(data){
            this.contacts = data;
        }else if(error){
            this.errorDetails = error;
        }
    }

    navigateToContactDetail(event){
        this.contactId = event.target.value;
        console.log('in navigate method '+this.contactId);
        
        this[NavigationMixin.Navigate]({
            type:'standard__recordPage',
            attributes:{
                recordId:this.contactId,
                objectApiName:'Contact',
                actionName:'view'
            }           
 
        });
    }
}