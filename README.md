# Vehicle Registry Contract

## Overview

This smart contract, `VehicleRegistry`, allows users to manage a collection of vehicles. Users can add vehicles to the registry and retrieve information about a specific vehicle.

## Contract Details

### Struct Definition

- `Vehicle`: Represents a vehicle with details including model, manufacturer, year of manufacture, and owner.

### Functions

- `addVehicle`: Adds a new vehicle to the registry. Requires the vehicle's model, manufacturer, and year of manufacture.
- `vehicles`: A dictionary storing vehicles, indexed by their model.

## Transactions and Scripts

- **Add Vehicle**: Use `add_vehicle.cdc` to add a new vehicle to the registry.
- **Get Vehicle**: Use `get_vehicle.cdc` to retrieve vehicle details by its model.


## Usage

1. **Deploy** the contract to your Flow blockchain.
2. **Run** the `add_vehicle` transaction to add a vehicle.
3. **Execute** the `get_vehicle` script to retrieve vehicle details.
