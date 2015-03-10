# =====
# Doors
# =====

Doors = {};

Doors.new = func {
   obj = { parents : [Doors],
           crew : aircraft.door.new("instrumentation/doors/crew", 8.0),
           passenger : aircraft.door.new("instrumentation/doors/passenger", 10.0)
         };
   return obj;
};

Doors.crewexport = func {
   me.crew.toggle();
}

Doors.passengerexport = func {
   me.passenger.toggle();
}


# ==============
# Initialization
# ==============

# objects must be here, otherwise local to init()
doorsystem = Doors.new();

