# チーム開発

# ローカルリポジトリ(以下ローカル)
# 手元にあるリポジトリ

# リモートリポジトリ(以下リモート)
# 他の人が参照できるリポジトリ
# リモートリポジトリの設定
git remote add origin https://github.com/<my_account>/<remote_repository>.git

# HEAD||インデックス
# 現在のリポジトリの先頭＝ワーキングディレクトリの状態

# ブランチ
# コミットから履歴を分岐させて開発を進めることができる
# メインブランチ  開発の中心となっているブランチ。メンバーの大多数が参照している
# トピックブランチ １つの機能や１つのバグ修正など、一つのトピックに絞った開発を行うブランチ。
# ブランチの確認
git branch
# ブランチの作成
git branch <branch_name>
# @option -m  ブランチ名の変更。チェックアウト中のブランチに適用される
git branch -m <new_branch_name>
# @option -d  ブランチの削除。全てのコミットが他ブランチにマージ済みであること。チェックアウト中のブランチでは実行できない。
# @option -D  ブランチの強制削除。チェックアウト中のブランチでは実行できない。
git branch -d <branch_name>
git branch -D <branch_name>

# チェックアウト
# 参照するブランチを切り替えて、HEADを移動する
git checkout <branch_name>
# リモートのブランチを追跡するローカルブランチの作成
git checkout -b branch_A origin/branch_A

# プッシュ
# ローカルの特定のブランチで行われたコミットを、リモートの特定のブランチにコピーする
git push -u origin main
# @option --set-upstream  現在チェックアウトしているブランチを、リモートリポジトリoriginのmainブランチに設定する
git push --set-upstream origin main

# フェッチ
# リモートの情報をローカルに取り込む

# マージ
# 2つ以上のブランチの開発履歴を併合する

# プル
# リモートからフェッチ + ローカルへマージ の２つの作業を束ねるのがプル