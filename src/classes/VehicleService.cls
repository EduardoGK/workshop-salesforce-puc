public with sharing class VehicleService {

	public static final String ENDPOINT = 'https://catolica-sc-developer-edition.na73.force.com/services/apexrest/v2/vehicle';
	
	public static List<Vehicle__c> findAll() {
		
	     HttpRequest req = new HttpRequest();
	     req.setEndpoint(ENDPOINT);
	     req.setMethod('GET');
	       
	     Http http = new Http();
	     HTTPResponse res = http.send(req);
	     String jsonResponse = res.getBody();

	     List<Vehicle__c> vehicles = (List<Vehicle__c>)JSON.deserialize(jsonResponse, List<Vehicle__c>.class);

	     System.debug(vehicles);

	     return vehicles;

	}

}