import { LightningElement, wire } from 'lwc';
import getCaseCaseRecordsById from '@salesforce/apex/CaseManager.getCaseRecordsById';
import getAllCases from '@salesforce/apex/CaseManager.getAllCases';
export default class CaseManager extends LightningElement {

    cases;
    inputCaseNumber;
    errorDetails;

    @wire(getAllCases)
    checkCaseDetails({data,error}){
        if(data){
            this.cases = data;            
        }
        else if(error){
            this.errorDetails = error;
            console.log(this.errorDetails);
        }
    }

    searchForCase(event){
        this.inputCaseNumber = event.target.value;
        console.log(this.inputCaseNumber);
        getCaseCaseRecordsById({caseId:this.inputCaseNumber})
        .then(result =>{
            this.cases = result;
        }  
        )
        .catch(error=>{
            console.log(error);
        });
    }
    /*
    cases = [
        {
            Id:1,
            Subject:'Test Case 1',
            Priority:'High',
            Status:'New'
        },
        {
            Id:2,
            Subject:'Test Case 2',
            Priority:'Medium',
            Status:'Working'
        },
        {
            Id:3,
            Subject:'Test Case 3',
            Priority:'Low',
            Status:'Closed'
        },
    ]
    */
}