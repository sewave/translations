@echo off
set T_FILENAME="TR_Maniac Mansion (S) [!].nes"
set SCRIPTNAME="maniacmansionnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2E76:10,43CD:8,43EE:8,4419:8,4424:8,43F9:8,43D8:8,43E3:8
pause
