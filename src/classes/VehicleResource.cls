@RestResource(urlMapping='/v2/vehicle/*')
global class VehicleResource {
    	
    @HttpGet
    global static List<Vehicle__c> findAll(){
        return [SELECT Id, Name, Plate__c FROM Vehicle__c];
    }

    @HttpPost
    global static void save(List<Vehicle__c> vehicles){
        insert vehicles;
    }
    
}