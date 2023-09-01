public with sharing class LeadModifyClass {
    public static void LeadModify(List<Lead> leadList) {
        for(Lead lead: leadList){
            lead.FirstName='FirstNames';
        } 
    }
}