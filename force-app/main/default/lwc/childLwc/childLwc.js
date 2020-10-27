import { LightningElement,api } from 'lwc';

export default class ChildLwc extends LightningElement {

   @api message;


   handleCheckboxChange() {
    // Get the labels of selected checkboxes
    const filters = Array.from(
        this.template.querySelectorAll('lightning-input'),
    )
        .filter(element => element.checked)
        .map(element => element.label);
    const filterChangeEvent = new CustomEvent('filterchange', {
        detail: { filters },
    });
    // Fire the custom event
    this.dispatchEvent(filterChangeEvent);
}

    callParent(event){
        const value = event.target.value;
        console.log(value);
        //always remember to write event name in small caps
        const callEvent = new CustomEvent('callparentevent',{
            detail:{value},
        });

        //fire event
        this.dispatchEvent(callEvent);
    }

}