# qb-platescan
This script allows officers to quickly scan plates while patroling. Scanning attempts check for bolos, stolen status, and warrants within ps-mdt. If a vehicle is not owned by a player, than it will generate a name and store it server-side for later use. With the optional snippet from step 5, non-owned vehicles that are stolen have a chance to get marked as flagged. 

This script was forked from @QuantumMalice with updates and bug fixes to exisiting issues. You can find the original repo [here](https://github.com/QuantumMalice/qb-platescan)

This resource also includes a vehicle target option (boot and number plate vehicle bone) which scans the plate for an even more accurate reading and/or if Police Officers are not doing a traffic stop.

* [Video](https://streamable.com/144ebv)

# Dependencies
* [qb-core](https://github.com/qbcore-framework/qb-core)
* [oxysql](https://github.com/overextended/oxmysql)
* [ox_target](https://github.com/overextended/ox_target)
* [wk_wars2x](https://github.com/WolfKnight98/wk_wars2x)
* [ps-mdt](https://github.com/Project-Sloth/ps-mdt)

# Installation
*Make sure this script starts after qb-phone & wk_wars2x*
1. Download source files from github
2. Drag into resources folder
3. Replace `cl_plate_reader.lua` in wk_wars2x
4. If using qb-phone, add export to disable scanning spam
5. Add event to vehicle keys script *(Optional)*

## Add phone export:

- **Add this to *qb-phone/client/main.lua*** 
```lua
local function IsPhoneOpen()
    return PhoneData.isOpen
end exports("IsPhoneOpen", IsPhoneOpen)
```

## Add vehicle keys event: *Optional*

- **Add this to your vehicle keys script and match up your variables** (*somewhere after a successful hotwire*)
```lua
TriggerEvent("qb-platescan:client:AddStolenPlate", vehicle, plate)
```

# Usage
After wk_wars2x plate reader display is toggled, use left mouse click to scan vehicle plates.

# Credits
- Thanks to [**Linden**](https://github.com/thelindat) for [*linden_outlawalert*](https://github.com/thelindat/linden_outlawalert)