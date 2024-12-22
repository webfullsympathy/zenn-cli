---
title: "ZennのCLIを試してみた。"
emoji: "👨‍💻"
type: "idea" # tech: 技術記事 / idea: アイデア
topics: [zenn,cli,github,test]
published: true
---
# 注意
とてつもなく話がズレる記事です。  
読むのが嫌な人はお帰りください。

# 挨拶

こんにちは。~~初登校~~初投稿のウェブ完理です。  
ZennのGitHubデプロイを使ったCLIの投稿方法がありVSCodeのシンプル(大嘘)な画面で操作が出来て楽でした。  
今のようにMarkdownをめちゃくちゃ試していきます。(本題はZennCLI)  

# Markdown
マークダウンは日々使い慣れているのでいいのですが技術系ブログは数回しか書いたことないので不安しかないです。  
まあStudio Designから自作ブログにWordPressも使っている僕には余裕ですよ！(フラグ)

# ZennCLI
次にCLIの評価ですね。マークダウンについてはあまり言うことなかったのでこっちで長さ溶かします。

まず、**コマンドミスった！**  はい。ミスりました。  
本来はグローバルインストールするのですがローカルインストールしてしまったのでnpx入れないといけなくなりました。  
それでめんどくさくなったのでnpm使われてるんだしMITライセンスだしってな感じでこうなりました。
```json:package.json
{
  "name": "zenn-cli",
  "version": "1.0.0",
  "description": "",
  "scripts": {
    "help": "start https://zenn.dev/zenn/articles/zenn-cli-guide",
    "article": "npx zenn new:article",
    "article-name": "article-name.bat",
    "book": "npx zenn new:book",
    "book-name": "book-name.bat",
    "preview": "npx zenn preview"
  },
  "keywords": [],
  "author": "ウェブ完理",
  "dependencies": {
    "zenn-cli": "^0.1.158"
  }
}
```
スラグをいちいち入れると忘れそうなのでbatも作りました。
```batch:article-name.bat
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
```

```batch:book-name.bat
@ECHO OFF
chcp 65001
cls

:INPUT_START
ECHO +-------------------------------------------------------+
ECHO  本のスラグを入力してください。
ECHO +-------------------------------------------------------+
SET INPUT_STR=
SET /P INPUT_STR=

IF "%INPUT_STR%"=="" GOTO :INPUT_START

:INPUT_CONF
ECHO +-------------------------------------------------------+
ECHO  本のスラグは[%INPUT_STR%]でよろしいですか？
ECHO （Y / N）
ECHO +-------------------------------------------------------+
SET CONF_SELECT=
SET /P CONF_SELECT=

IF "%CONF_SELECT%"== SET CONF_SELECT=Y
IF /I NOT "%CONF_SELECT%"=="Y"  GOTO :INPUT_START

:INPUT_END
npx zenn new:book --slug %INPUT_STR%
```
これじゃ設定変えてみた記事になってしまうので続き書きます。  
プレビューも出来るみたいでした。  
![](/images/zenneditor.png)  
Zennとほぼ一緒ですね。今度比較してみます。

ちなみにZennCLIはめっちゃ使いやすいです。  
プレビューコマンドやった時にブラウザ開いてくれてたらいいのにな...

やっぱりレビュー動画はZennに上げるべきではありませんでした。