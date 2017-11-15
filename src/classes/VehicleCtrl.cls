public with sharing class VehicleCtrl {

	public List<Vehicle__c> vehicles {get;set;}
	
	public VehicleCtrl() {
		
		this.vehicles = VehicleService.findAll();

	}


}