Liinux#1170 on Discord.

Cleaned it up and made some changes. Added thermal.

If you want the sound, place the nv.ogg file interact-sound.

1.1 update
- Added config file to make it easier for everyone.

1.2 update
- Updated code and config.
- Separated clothing numbers from the male and female characters.
- Added more customizability for the thermal goggles.

Place the item in qb-core/shared.lua:
```

	['nightvision'] 				 = {['name'] = 'nightvision',					['label'] = 'Night Vision goggles',		['weight'] = 5000,		['type'] = 'item',		['image'] = 'nightvision.png',			['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bravo Six, going dark'},

	['thermalvision'] 				 = {['name'] = 'thermalvision',					['label'] = 'Thermal goggles',			['weight'] = 5000,		['type'] = 'item',		['image'] = 'nightvision.png',			['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bravo Six, going see through'},
```

## Original: https://github.com/CribbeDEV/qb-nightvision

