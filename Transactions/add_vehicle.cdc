import VehicleRegistry from 0x05 // deployed on play.flow.com

transaction(model: String, manufacturer: String, yearOfManufacture: Int) {

    prepare(signer: AuthAccount) {
        // Call the addVehicle function from the contract
        VehicleRegistry.addVehicle(model: model, manufacturer: manufacturer, yearOfManufacture: yearOfManufacture)
    }

    execute {
        log("Vehicle added successfully.")
    }
}
