@echo off
set T_FILENAME="TR_Dynamite Headdy (Japan) [T+ENG].md"
set SCRIPTNAME="dynamiteheaddyjapsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1A00B5:20,1A02EC:20,1A0438:20,1A0459:20,1A049B:20,1A0768:20,1A0789:20
pause
