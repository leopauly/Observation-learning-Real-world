
"use strict";

let TestArray = require('./TestArray.js');
let TestStringInt = require('./TestStringInt.js');
let TestEmpty = require('./TestEmpty.js');
let TestWithHeader = require('./TestWithHeader.js');
let WithHeader = require('./WithHeader.js');
let FixedLengthStringArray = require('./FixedLengthStringArray.js');
let ArrayOfFixedLength = require('./ArrayOfFixedLength.js');
let FixedLength = require('./FixedLength.js');
let EmbeddedFixedLength = require('./EmbeddedFixedLength.js');
let WithDuration = require('./WithDuration.js');
let ArrayOfVariableLength = require('./ArrayOfVariableLength.js');
let FixedLengthArrayOfExternal = require('./FixedLengthArrayOfExternal.js');
let Constants = require('./Constants.js');
let EmbeddedVariableLength = require('./EmbeddedVariableLength.js');
let WithMemberNamedHeaderThatIsNotAHeader = require('./WithMemberNamedHeaderThatIsNotAHeader.js');
let VariableLength = require('./VariableLength.js');
let VariableLengthStringArray = require('./VariableLengthStringArray.js');
let VariableLengthArrayOfExternal = require('./VariableLengthArrayOfExternal.js');
let HeaderNotFirstMember = require('./HeaderNotFirstMember.js');
let EmbeddedExternal = require('./EmbeddedExternal.js');
let CustomHeader = require('./CustomHeader.js');
let WithTime = require('./WithTime.js');
let ThroughputMessage = require('./ThroughputMessage.js');
let LatencyMessage = require('./LatencyMessage.js');
let PointCloud = require('./PointCloud.js');
let Point32 = require('./Point32.js');
let ChannelFloat32 = require('./ChannelFloat32.js');

module.exports = {
  TestArray: TestArray,
  TestStringInt: TestStringInt,
  TestEmpty: TestEmpty,
  TestWithHeader: TestWithHeader,
  WithHeader: WithHeader,
  FixedLengthStringArray: FixedLengthStringArray,
  ArrayOfFixedLength: ArrayOfFixedLength,
  FixedLength: FixedLength,
  EmbeddedFixedLength: EmbeddedFixedLength,
  WithDuration: WithDuration,
  ArrayOfVariableLength: ArrayOfVariableLength,
  FixedLengthArrayOfExternal: FixedLengthArrayOfExternal,
  Constants: Constants,
  EmbeddedVariableLength: EmbeddedVariableLength,
  WithMemberNamedHeaderThatIsNotAHeader: WithMemberNamedHeaderThatIsNotAHeader,
  VariableLength: VariableLength,
  VariableLengthStringArray: VariableLengthStringArray,
  VariableLengthArrayOfExternal: VariableLengthArrayOfExternal,
  HeaderNotFirstMember: HeaderNotFirstMember,
  EmbeddedExternal: EmbeddedExternal,
  CustomHeader: CustomHeader,
  WithTime: WithTime,
  ThroughputMessage: ThroughputMessage,
  LatencyMessage: LatencyMessage,
  PointCloud: PointCloud,
  Point32: Point32,
  ChannelFloat32: ChannelFloat32,
};
