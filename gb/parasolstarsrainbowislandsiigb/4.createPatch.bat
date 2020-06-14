@echo off
set T_FILENAME="TR_Parasol Stars - Rainbow Islands II (Europe).gb"
set S_FILENAME="Parasol Stars - Rainbow Islands II (Europe).gb"
set SCRIPTNAME="parasolstarsrainbowislandsiigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
