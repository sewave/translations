@echo off
set T_FILENAME="TR_Metal Slug - 2nd Mission (JUE) [!].ngc"
set S_FILENAME="Metal Slug - 2nd Mission (JUE) [!].ngc"
set SCRIPTNAME="metalslug2ndmissionngc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
