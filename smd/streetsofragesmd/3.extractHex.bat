@echo off
set T_FILENAME="TR_Streets of Rage (W) (REV01) [!].gen"
set SCRIPTNAME="streetsofragesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
