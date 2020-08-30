@echo off
set T_FILENAME="TR_Street Fighter IV (Unl).nes"
set SCRIPTNAME="streetfighterivnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 55FF0:10,56FF0:10,5FFF0:10,5E620:100,4C580:20,4C5B0:10
pause
