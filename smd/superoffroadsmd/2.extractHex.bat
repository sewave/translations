@echo off
set T_FILENAME="TR_Super Off Road (U) [!].gen"
set SCRIPTNAME="superoffroadsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6D196:120,63A40:C0,63F00:180,64500:160,64720:C0,6D656:100,6E856:80,6B196:400,67720:A0,67900:A0
pause
