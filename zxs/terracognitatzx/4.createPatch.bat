@echo off
set T_FILENAME="TR_Terra Cognita (1986)(Codemasters).tzx"
set S_FILENAME="Terra Cognita (1986)(Codemasters).tzx"
set SCRIPTNAME="terracognitatzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
