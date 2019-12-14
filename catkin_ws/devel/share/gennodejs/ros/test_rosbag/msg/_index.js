
"use strict";

let PartiallyMigrated = require('./PartiallyMigrated.js');
let Simple = require('./Simple.js');
let MigratedExplicit = require('./MigratedExplicit.js');
let MigratedImplicit = require('./MigratedImplicit.js');
let Unmigrated = require('./Unmigrated.js');
let Renamed4 = require('./Renamed4.js');
let MigratedMixed = require('./MigratedMixed.js');
let SubUnmigrated = require('./SubUnmigrated.js');
let SimpleMigrated = require('./SimpleMigrated.js');
let Constants = require('./Constants.js');
let Converged = require('./Converged.js');
let MigratedAddSub = require('./MigratedAddSub.js');

module.exports = {
  PartiallyMigrated: PartiallyMigrated,
  Simple: Simple,
  MigratedExplicit: MigratedExplicit,
  MigratedImplicit: MigratedImplicit,
  Unmigrated: Unmigrated,
  Renamed4: Renamed4,
  MigratedMixed: MigratedMixed,
  SubUnmigrated: SubUnmigrated,
  SimpleMigrated: SimpleMigrated,
  Constants: Constants,
  Converged: Converged,
  MigratedAddSub: MigratedAddSub,
};
