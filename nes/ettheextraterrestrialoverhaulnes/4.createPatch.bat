@echo off
set T_FILENAME="TR_E.T. - The Extra Terrestrial (USA) (Digital Release) (Aftermarket) (Unl) [OVERHAUL].nes"
set S_FILENAME="E.T. - The Extra Terrestrial (USA) (Digital Release) (Aftermarket) (Unl).nes"
set SCRIPTNAME="ettheextraterrestrialoverhaulnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
