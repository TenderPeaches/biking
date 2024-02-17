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
bike_part__bottom_bracket = BicyclePart.create(name: "Bottom bracket", bicycle_system: bike_system__drivetrain, description: "Spindles that connect a bearing system to the cranks")
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

# Bike part types
bike_part_type__bb__press_fit = BicyclePartType.create(name: "Press fit", description: "No threads on the shell; adapters or cups with bearings are pressed into the shell; no visible tool fittings", bicycle_part: bike_part__bottom_bracket)
bike_part_type__bb__threaded = BicyclePartType.create(name: "Threaded", description: "Threaded shell accepts threaded cups, adjusters or self-contained bearings")
bike_part_type__bb__cup = BicyclePartType.create(name: "Adjustable cup and cone", description: "Threaded shell; Two tool fittings on the non-drive side; Notched lockring separate from the cup", bicycle_part: bike_part__bottom_bracket, parent_type: bike_part_type__bb__threaded)
bike_part_type__bb__cartridge = BicyclePartType.create(name: "Cartridge/Integrated spindle", description: "Threaded shell; Spindle and bearings form a self-contained unit", bicycle_part: bike_part__bottom_bracket, parent_type: bike_part_type__bb__threaded)
bike_part_type__bb__external_bearing = BicyclePartType.create(name: "External bearing/Thru-spindle", description: "Threaded bearing cups installed into threaded shell; Spindle is then passed through", bicycle_part: bike_part__bottom_bracket, parent_type: bike_part_type__bb__threaded)
bike_part_type__bb__thread_together = BicyclePartType.create(name: "Thread-together/Thread-thru", description: "Fits inside non-threaded shells; Cups have tool fitting because the two pieces will match inside the shell", bicycle_part: bike_part__bottom_bracket)
bike_part_type__bb__campagnolo_ultra_torque = BicyclePartType.create(name: "Campagnolo Ultra-Torque", description: "Bearings installed on the crank spindle after it is removed from the bottom bracket; Cups are pressed/threaded onto the shell and generally not taken out unless damaged or upgrading", bicycle_part: bike_part__bottom_bracket)
bike_part_type__bb__one_piece = BicyclePartType.create(name: "One-piece", description: "Forms a single piece with the entire crank arms", bicycle_part: bike_part__bottom_bracket)

bike_part_spec__bb__threaded__english = BicyclePartTypeSpec.create(label: "English", description: "1.37\" x 24 threads/in, ~34.8mm diameter; non-drive side is right-handed threaded (tightens clockwise); drive-side left-hand threaded; shell inside diameter ~33.7mm; aka ENG/BSA/BSC/BC/ISO/British/Euro", bicycle_part_type: bike_part_type__bb__threaded)
bike_part_spec__bb__threaded__t47 = BicyclePartTypeSpec.create(label: "T47", description: "47mm x 1mm pitch threading; Non-drive side right hand threaded", bicycle_part_type: bike_part_type__bb__threaded)
bike_part_spec__bb__press_fit__pf41 = BicyclePartTypeSpec.create(label: "PF41", description: "47mm inside diameter; aka BB86, BB89.5, BB92, BB107, BB121, BB132, PF24, Shimano Press-Fit; Numbers 86 to 132 refer to shell nominal width in mm; PF24 refers to a 24mm spindle; PF41 allows various crank spindle systems: 24mm, 28.99mm, 30mm, 22/24mm", bicycle_part_type: bike_part_type__bb__press_fit)
bike_part_spec__bb__press_fit__pf42 = BicyclePartTypeSpec.create(label: "PF42", description: "42mm inside diameter; aka BB30, BB30A, BBRight Direct Fit", bicycle_part_type: bike_part_type__bb__press_fit)
bike_part_spec__bb__press_fit__pf46 = BicyclePartTypeSpec.create(label: "PF46", description: "46mm inside diameter; aka PF30, PF30A, PF30AI, BB386EVO, OSBB, BBright Press Fit", bicycle_part_type: bike_part_type__bb__press_fit)
bike_part_spec__bb__press_fit__bb90 = BicyclePartTypeSpec.create(label: "BB90", description: "Trek-proprietary; 90mm shell width; Bearing outside diameters are 37mm", bicycle_part_type: bike_part_type__bb__press_fit)
bike_part_spec__bb__press_fit__bb95 = BicyclePartTypeSpec.create(label: "BB95", description: "Trek-proprietary; 95mm shell width; Bearing outside diameters are 37mm", bicycle_part_type: bike_part_type__bb__press_fit)
bike_part_spec__bb__press_fit__spanish_fit = BicyclePartTypeSpec.create(label: "Spanish fit", description: "37mm frame shell diameter, spindle ODs of 19mm or 22mm; No adapter or cup, the bearing is pressed directly into the frame", bicycle_part_type: bike_part_type__bb__press_fit)
