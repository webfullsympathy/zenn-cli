@ECHO OFF
chcp 65001
cls

:INPUT_START
ECHO +-------------------------------------------------------+
ECHO  記事のスラグを入力してください。
ECHO +-------------------------------------------------------+
SET INPUT_STR=
SET /P INPUT_STR=

IF "%INPUT_STR%"=="" GOTO :INPUT_START

:INPUT_CONF
ECHO +-------------------------------------------------------+
ECHO  記事のスラグは[%INPUT_STR%]でよろしいですか？
ECHO （Y / N）
ECHO +-------------------------------------------------------+
SET CONF_SELECT=
SET /P CONF_SELECT=

IF "%CONF_SELECT%"== SET CONF_SELECT=Y
IF /I NOT "%CONF_SELECT%"=="Y"  GOTO :INPUT_START

:INPUT_END
npx zenn new:article --slug %INPUT_STR%