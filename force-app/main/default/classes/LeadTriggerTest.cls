@isTest
public with sharing class LeadTriggerTest {
    @isTest
    public static void LeadTriggerListTest(){
            List<Lead> leadList = new List<Lead>{new Lead(LastName='LastName 3', Status='Working - Contacted', Company='Company 3'),
                                                    new Lead(LastName='LastName42', Status='Working - Contacted', Company='Company 4')};
            Test.startTest();
            insert leadList;
            Test.stopTest();
            List<Lead> leadListUpdated = [select Id, Name,  Status, CompanyDunsNumber from Lead WHERE FirstName='FirstNames'];
            System.assertEquals(True,leadListUpdated.size()>0);
            Assert.areEqual(True,leadListUpdated.size()>0, 'Size is greater than 0'); 
//            Assert.areEqual('LastName 1',leadListUpdated[0].LastName, 'LastName is 1'); 
//			System.debug(leadListUpdated[0].LastName);
    }


}