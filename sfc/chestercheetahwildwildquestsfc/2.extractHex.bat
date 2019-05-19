@echo off
set T_FILENAME="TR_Chester Cheetah - Wild Wild Quest (U) (59734).smc"
set SCRIPTNAME="chestercheetahwildwildquestsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 98A00:200,98800:200,99020:100
pause
