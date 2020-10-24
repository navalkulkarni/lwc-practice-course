import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/FetchContact.getContacts';
export default class ContactsDisplay extends LightningElement {

    @wire(getContacts)
    contacts;
}