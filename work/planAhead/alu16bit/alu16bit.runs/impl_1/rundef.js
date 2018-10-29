//
// PlanAhead(TM)
// rundef.js: a PlanAhead-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "E:/Mojo/14.7/ISE_DS/EDK/bin/nt;E:/Mojo/14.7/ISE_DS/EDK/lib/nt;E:/Mojo/14.7/ISE_DS/ISE/bin/nt;E:/Mojo/14.7/ISE_DS/ISE/lib/nt;E:/Mojo/14.7/ISE_DS/common/bin/nt;E:/Mojo/14.7/ISE_DS/common/lib/nt;E:/Mojo/14.7/ISE_DS/PlanAhead/bin;";
} else {
  PathVal = "E:/Mojo/14.7/ISE_DS/EDK/bin/nt;E:/Mojo/14.7/ISE_DS/EDK/lib/nt;E:/Mojo/14.7/ISE_DS/ISE/bin/nt;E:/Mojo/14.7/ISE_DS/ISE/lib/nt;E:/Mojo/14.7/ISE_DS/common/bin/nt;E:/Mojo/14.7/ISE_DS/common/lib/nt;E:/Mojo/14.7/ISE_DS/PlanAhead/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "bitgen",
         "\"mojo_top_0_routed.ncd\" \"mojo_top_0.bit\" \"mojo_top_0.pcf\" -g Binary:Yes -g Compress -w -intstyle pa" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
