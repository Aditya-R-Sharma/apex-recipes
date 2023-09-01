trigger leadTrigger on Lead (before insert) {
    // List<Lead> leadList = new List<Lead>();
    //Update CompanyDunsNumber
    LeadModifyClass.LeadModify(Trigger.new);

}