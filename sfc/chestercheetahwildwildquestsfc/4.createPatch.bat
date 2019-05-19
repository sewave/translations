@echo off
set T_FILENAME="TR_Chester Cheetah - Wild Wild Quest (U) (59734).smc"
set S_FILENAME="Chester Cheetah - Wild Wild Quest (U) (59734).smc"
set SCRIPTNAME="chestercheetahwildwildquestsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
