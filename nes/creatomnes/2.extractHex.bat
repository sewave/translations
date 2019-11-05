@echo off
set T_FILENAME="TR_Creatom (Spain) (Gluk Video) (Unl).nes"
set SCRIPTNAME="creatomnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16580:20,12240:60,123E0:20,143E0:20,14240:60
pause
