@echo off
set T_FILENAME="TR_Castle of Illusion Starring Mickey Mouse (USA, Brazil).sms"
set S_FILENAME="Castle of Illusion Starring Mickey Mouse (USA, Brazil).sms"
set SCRIPTNAME="castleofillusionstarringmickeymousesms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
