# Zenn CLI

* [使い方](https://zenn.dev/zenn/articles/zenn-cli-guide)

# 個人用メモ

## デプロイさせない
コミットメッセージに`[skip ci]`を含めるとデプロイされない。

## 独自設定
npmのscriptで短縮させてる

- ヘルプ・・・`npm run help`

- 記事作成・・・`npm run article`
- 記事作成(スラグ指定)・・・`npm run article-name`

- 本作成・・・`npm run book`
- 本作成(スラグ指定)・・・`npm run book-name`

- 記事・本のプレビュー・・・`npm run preview`