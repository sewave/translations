@echo off
set T_FILENAME="TR_Hugo (Europe) (SGB Enhanced).gb"
set SCRIPTNAME="hugogb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C3BE:10,D8CE:20,D2BE:20,8410:20,8510:20,8C10:20,8D10:20,9410:20,9510:20,9C10:20,9D10:20,A410:20,A510:20,AC10:20,AD10:20,B410:20,B510:20
pause