@echo off


set Java_Root=D:\User\23102\
set Config_Path=%~sdp0config.txt

if not defined Chang_Java_Log (
echo Not set Chang_Java_Log,setting...
set Chang_Java_Log=1
del %Config_Path%
) 

rem init config

if not exist %Config_Path% (
path > %Config_Path%
echo setting config
) else (
for /f "delims=" %%t in ('type %Config_Path%') do set Path_Str=%%t
)

rem check Path_str
if defined Path_Str (
	echo load
    set %Path_Str%
) else echo done


rem set env
set input=
set /p input=input jdk version number:
set Change_Java_Path=%Java_Root%Java%input%\bin
set Path=%Change_Java_Path%;%Path%

echo "changed"

rem unset env
set input=
set Change_Java_Path=
set Config_Path=
set Path_Str=
set Java_Root=

