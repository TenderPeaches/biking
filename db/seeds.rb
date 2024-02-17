# Bicycle systems
bike_system__frame = BicycleSystem.create(name: "Frame", description: "Ties all the parts together and provides the structural integrity to support any riders and their cargo through their journey")
bike_system__drivetrain = BicycleSystem.create(name: "Drivetrain", description: "Allows riders to convert their energy into directional motion for the bike")
bike_system__braking = BicycleSystem.create(name: "Brakes", description: "Allows riders to stop their momentum")
bike_system__steering = BicycleSystem.create(name: "Steering", description: "Allows rider to guide the bicycle left, right or straight ahead")
bike_system__wheels = BicycleSystem.create(name: "Wheels", description: "Acts as a seam between the frame and the road surface, allowing the bicycle to move")
bike_system__suspension = BicycleSystem.create(name: "Suspension", description: "Softens the ride and takes pressure off the wheels on hard landings")
bike_system__seating = BicycleSystem.create(name: "Seating", description: "Provides direct support to the riders' weight, usually with some measure of comfort")
bike_system__peripherals = BicycleSystem.create(name: "Peripherals", description: "Provides secondary value to the bicycle through various means")

# Bicycle parts
# Frame
bike_part__top_tube = BicyclePart.create(name: "Top tube", bicycle_system: bike_system__frame)
bike_part__head_tube = BicyclePart.create(name: "Head tube", bicycle_system: bike_system__frame)
bike_part__down_tube = BicyclePart.create(name: "Down tube", bicycle_system: bike_system__frame)
bike_part__seat_tube = BicyclePart.create(name: "Seat tube", bicycle_system: bike_system__frame)
bike_part__seat_stay = BicyclePart.create(name: "Seat stay", bicycle_system: bike_system__frame)
bike_part__chain_stay = BicyclePart.create(name: "Chain stay", bicycle_system: bike_system__frame)

# Drivetrain
bike_part__bottom_bracket = BicyclePart.create(name: "Bottom bracket", bicycle_system: bike_system__drivetrain)
bike_part__crank_arm = BicyclePart.create(name: "Crank arm", bicycle_system: bike_system__drivetrain)
bike_part__chain = BicyclePart.create(name: "Chain", bicycle_system: bike_system__drivetrain)
bike_part__front_derailleur = BicyclePart.create(name: "Front derailleur", bicycle_system: bike_system__drivetrain)
bike_part__rear_derailleur = BicyclePart.create(name: "Rear derailleur", bicycle_system: bike_system__drivetrain)
bike_part__pedal = BicyclePart.create(name: "Pedal", bicycle_system: bike_system__drivetrain)
bike_part__drivetrain_hub = BicyclePart.create(name: "Drivetrain hub", bicycle_system: bike_system__drivetrain)
bike_part__jockey_wheel = BicyclePart.create(name: "Jockey wheel", bicycle_system: bike_system__drivetrain)
bike_part__derailleur_hanger = BicyclePart.create(name: "Derailleur hanger", bicycle_system: bike_system__drivetrain)
bike_part__shifting_cables = BicyclePart.create(name: "Shifting cables", bicycle_system: bike_system__drivetrain)
bike_part__gear_shifter = BicyclePart.create(name: "Gear shifter", bicycle_system: bike_system__drivetrain)

# Braking
bike_part__brakes = BicyclePart.create(name: "Brakes", bicycle_system: bike_system__braking)
bike_part__brake_pads = BicyclePart.create(name: "Brake pads", bicycle_system: bike_system__braking)
bike_part__brake_cables = BicyclePart.create(name: "Brake cables", bicycle_system: bike_system__braking)
bike_part__brake_levers = BicyclePart.create(name: "Brake levers", bicycle_system: bike_system__braking)

# Steering
bike_part__headset = BicyclePart.create(name: "Headset", bicycle_system: bike_system__braking)
bike_part__fork = BicyclePart.create(name: "Fork", bicycle_system: bike_system__braking)
bike_part__stem = BicyclePart.create(name: "Stem", bicycle_system: bike_system__braking)
bike_part__handlebars = BicyclePart.create(name: "Handlebars", bicycle_system: bike_system__braking)

# Wheels
bike_part__wheel_hub = BicyclePart.create(name: "Wheel hub", bicycle_system: bike_system__wheels)
bike_part__spokes = BicyclePart.create(name: "Spokes", bicycle_system: bike_system__wheels)
bike_part__rim = BicyclePart.create(name: "Rim", bicycle_system: bike_system__wheels)
bike_part__tire = BicyclePart.create(name: "Tire", bicycle_system: bike_system__wheels)

# Suspension
bike_part__front_suspension = BicyclePart.create(name: "Front suspension", bicycle_system: bike_system__suspension)
bike_part__rear_suspension = BicyclePart.create(name: "Rear suspension", bicycle_system: bike_system__suspension)

# Seating
bike_part__seat_post = BicyclePart.create(name: "Seat post", bicycle_system: bike_system__seating)
bike_part__saddle_rails = BicyclePart.create(name: "Saddle rails", bicycle_system: bike_system__seating)
bike_part__seat = BicyclePart.create(name: "Seat", bicycle_system: bike_system__seating)

# Peripherals
# todo leave to later
