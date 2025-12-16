# naginata-keymap-config
# keymapper をインストール
https://github.com/houmain/keymapper?tab=readme-ov-file#windows

# Windows msiでインストール
https://github.com/houmain/keymapper/releases
keymapper-5.3.1-Windows-x86_64.msi

# Windows zip
https://github.com/houmain/keymapper/releases
keymapper-5.3.1-Windows-x86_64.zip

ポータブル運用しやすいように展開したフォルダに
keymapper.confを新規作成しておきます

それからkeymapperd.exeとkeymapper.exeを実行します


## 薙刀式 設定
トライアイコン メニューからConfigurationを選択

Configurationファイル(keymapper.conf)が
メモ帳で開きます。
naginata_v16.confのテキストをコピーして保存します

トレイアイコンメニューから
Reloadで更新します。
変更したキーを打って更新されているか確認します。

hj 同時押しで 薙刀式の入力開始して
fg 同時押しで 英数モードになります


## 新下駄配列 設定
トライアイコン メニューからConfigurationを選択
開いたkeymapper.confに
sin_geta_Windows.confのテキストをコピーして保存します
トライアイコンからReloadで、読み込みします

## 新下駄配列の入力開始 停止
ESC ＋ スペースキーで入力開始
無変換で英数モードになります

# keymapper の無効化
タスクトレイ メニュー Activeのチェックマークを外せば
keymapperの設定は無効化されます

# keymapper の停止方法
タスクトレイ メニュー Exitでkeymapper.exeは停止します
keymapperd.exeの停止はタスクマネジャーから停止させます
