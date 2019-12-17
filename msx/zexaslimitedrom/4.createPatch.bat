@echo off
set T_FILENAME="TR_Zexas Limited (1985) (dB-Soft) (J).rom"
set S_FILENAME="Zexas Limited (1985) (dB-Soft) (J).rom"
set SCRIPTNAME="zexaslimitedrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
