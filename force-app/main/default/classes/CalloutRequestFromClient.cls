public with sharing class CalloutRequestFromClient {
    public CalloutRequestFromClient() {

    }
    string username = 'navalkulkarni@cunning-otter-qw35z1.com';
    string password = 'Cybage#12349nHR8WlbvHmkRp0gvX63IT71';
    partnerWSDL.Soap soapObj = new partnerWSDL.Soap();
    partnerWSDL.LoginResult loginResult = soapObj.login(username,password);
    system.debug(loginResult);
    SoapLeadWebService.SessionHeader_element sessionObj = new SoapLeadWebService.SessionHeader_element();
    sessionObj.sessionId = loginResult.sessionId;
    SoapLeadWebService.LeadWebService leadService = new SoapLeadWebService.LeadWebService();
    leadService.SessionHeader = sessionObj;
    leadService.createNewLead('Naval','kulkarni','cybage','9890080586','navalkulkarni@gmail.com');

}
