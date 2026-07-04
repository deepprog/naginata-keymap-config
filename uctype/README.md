# uctype — macOS に Unicode キーボード入力イベントを送信する CLI ツール

## 概要
uctype は、macOS の CGEvent を利用して任意の Unicode 文字列を
「キーボード入力イベント」としてシステムに送信するためのコマンドラインツールです。

## 特徴
- 純粋な Unicode 入力（virtualKey = 0 + keyboardSetUnicodeString）

## 使い方
```
$ uctype "文字列"
```

## ビルド
```
$ cd uctype
$ cd Sources
$ swiftc -parse-as-library uctype.swift -o uctype
```

## インストール
uctype プログラムは、パスを通したフォルダにコピーするか、
すでにPATHが通っているフォルダに、実行ファイルへのシンボリックリンクを貼る

## アクセシビリティ権限の付与（必須）
macOS の設定で以下を許可する必要がある

システム設定 → プライバシーとセキュリティ → アクセシビリティ
ここに ターミナル または uctype バイナリを追加して許可する。

