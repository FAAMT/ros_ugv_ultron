
"use strict";

let AddCO2Source = require('./AddCO2Source.js')
let RegisterGui = require('./RegisterGui.js')
let AddThermalSource = require('./AddThermalSource.js')
let DeleteThermalSource = require('./DeleteThermalSource.js')
let LoadExternalMap = require('./LoadExternalMap.js')
let LoadMap = require('./LoadMap.js')
let MoveRobot = require('./MoveRobot.js')
let AddSoundSource = require('./AddSoundSource.js')
let DeleteSoundSource = require('./DeleteSoundSource.js')
let DeleteCO2Source = require('./DeleteCO2Source.js')
let AddRfidTag = require('./AddRfidTag.js')
let DeleteRfidTag = require('./DeleteRfidTag.js')

module.exports = {
  AddCO2Source: AddCO2Source,
  RegisterGui: RegisterGui,
  AddThermalSource: AddThermalSource,
  DeleteThermalSource: DeleteThermalSource,
  LoadExternalMap: LoadExternalMap,
  LoadMap: LoadMap,
  MoveRobot: MoveRobot,
  AddSoundSource: AddSoundSource,
  DeleteSoundSource: DeleteSoundSource,
  DeleteCO2Source: DeleteCO2Source,
  AddRfidTag: AddRfidTag,
  DeleteRfidTag: DeleteRfidTag,
};
