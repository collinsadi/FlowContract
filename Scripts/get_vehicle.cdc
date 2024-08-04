import VehicleRegistry from 0x01

pub fun main(model: String): VehicleRegistry.Vehicle? {
    return VehicleRegistry.vehicles[model]
}
