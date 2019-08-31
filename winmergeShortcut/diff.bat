:winmerge path
set WINMERGE="C:\Program Files\WinMerge\WinMergeU.exe"


: Working dirctory
set WORKDIR=diff
: filename
set FILE_A=%WORKDIR%\a.txt
set FILE_B=%WORKDIR%\%b.txt

: Genereting file name (if you wanto to generate anathor file each time you start this.) 
:set NOW_DATE=%date:~0,4%%date:~5,2%%date:~8,2%
:set NOW_TIME=%time:~0,2%%time:~3,2%%time:~6,2%
:set FILE_A=%WORKDIR%\%NOW_DATE%_%NOW_TIME%_a.txt
:set FILE_B=%WORKDIR%\%NOW_DATE%_%NOW_TIME%_b.txt
:type nul > %FILE_A%
:type nul > %FILE_B%



echo %FILE_A%
echo %FILE_B%

: Make working directory
mkdir %WORKDIR%

: Open text files with the default app
start %FILE_A%
start %FILE_B%

start "" %WINMERGE% %FILE_A% %FILE_B%