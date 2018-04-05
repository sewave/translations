@echo off 
set T_FILENAME="TR_Prince of Persia (E).sms"
set S_FILENAME="Prince of Persia (E).sms"
set SCRIPTNAME="ppersiasms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
