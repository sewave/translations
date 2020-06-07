@echo off
set T_FILENAME="TR_Secret Scout in the Temple of Demise (Color Dreams) [!].nes"
set SCRIPTNAME="secretscoutinthetempleofdemisenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C690:30,1C8B0:30,1CAB0:40,14810:50,14A10:10,14EC0:D0,14E10:10
pause
