@echo off

@rem Set up the parameters.
set app=### application name ###
set user=### user ###
set password=### password ###

if "%1" == "" (
    echo Required "branch"
    exit /b
)

set branch=%1

set /p answer="'%app%' apps change branch to '%branch%'. OK? (Y/N)"

if /i not %answer% == y (
    echo Cancel
    exit /b
)

echo Change branch to '%branch%'
curl -s https://%user%:%password%@%app%.scm.azurewebsites.net/settings --data "{key: 'branch', value: '%branch%' }" -H "Content-Type: application/json; charset=UTF-8"

echo Completed
echo Please deploy
exit /b
