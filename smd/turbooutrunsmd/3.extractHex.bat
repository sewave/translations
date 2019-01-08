@echo off
set T_FILENAME="TR_Turbo Outrun (JE) [c][!].gen"
set SCRIPTNAME="turbooutrunsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6733A-673F9,27E24:440,29264:200,2C084:C0,
pause
