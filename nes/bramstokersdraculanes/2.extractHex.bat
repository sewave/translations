@echo off
set T_FILENAME="TR_Bram Stoker's Dracula (USA).nes"
set SCRIPTNAME="bramstokersdraculanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3ED70:90,3EE70:90,3FFC0:40,36310:40
pause
