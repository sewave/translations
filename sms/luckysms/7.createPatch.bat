@echo off
set T_FILENAME="Lucky Dime Caper, The - Starring Donald Duck (E) [T+ESP].sms"
set S_FILENAME="Lucky Dime Caper, The - Starring Donald Duck (E) [!].sms"
set SCRIPTNAME="luckysms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
