pub contract VehicleRegistry {

    // Define a struct to represent a vehicle
    pub struct Vehicle {
        pub let model: String // The model of the vehicle
        pub let manufacturer: String // The manufacturer of the vehicle
        pub let yearOfManufacture: Int // The year the vehicle was manufactured
        pub let owner: Address // The address of the account that added the vehicle

        // Initialize a new Vehicle instance with the given details
        init(model: String, manufacturer: String, yearOfManufacture: Int, owner: Address) {
            self.model = model
            self.manufacturer = manufacturer
            self.yearOfManufacture = yearOfManufacture
            self.owner = owner
        }
    }

    // Dictionary to store vehicles with the model as the key
    pub var vehicles: {String: Vehicle}

    // Add a new vehicle to the registry
    pub fun addVehicle(model: String, manufacturer: String, yearOfManufacture: Int) {
        let vehicleOwner = self.account.address
        let newVehicle = Vehicle(model: model, manufacturer: manufacturer, yearOfManufacture: yearOfManufacture, owner: vehicleOwner)
        self.vehicles[model] = newVehicle
    }

    // Initialize with an empty dictionary of vehicles
    init() {
        self.vehicles = {}
    }
}
