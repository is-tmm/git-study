# ディレクトリの作成
# @return git_studyディレクトリ
mkdir git_study

# ディレクトリに移動
cd git_study

# リポジトリの作成
# @return .gitファイル
git init
# ディレクトリを指定可能
# git init <directory_name>
# 既存のディレクトリをGitの管理下に置く
# git init .

# README.mdファイルの作成
echo '# hello, git!' > README.md
# 内容確認
cat README.md

# 管理状態の確認
git status

# README.mdファイルをGitの管理対象に加える（ステージング）
git add README.md
# 複数ファイルを指定してステージング
# git add <file> <file> <file>
# 一切合切ステージング
# git add .

# 作業中ファイル（ワーキングエリア）とステージングエリアとの差分の確認
git diff README.md
# @option --word-diff  文字単位で差分比較
# git diff --word-diff README.md

# リポジトリに変更を記録
# １行目：要約, ２行目：空行, ３行目：詳細
# 基本的にメッセージは、「現在形」「何故」「どのように」
git commit
# @option -m  １行のコミットメッセージと共に記録
# git commit -m "コミットメッセージ"
# @option -a  -allの略。差分のあるステージングエリアのファイルをまとめてaddして、かつcommitを実行する
# git commit -a -m "コミットメッセージ"

# コミット履歴の閲覧
git log
# @option --since --until  表示するログを特定の範囲に絞る。〜から〜まで
# git log --since=yyyy-MM-dd --until=yyy-MM-dd
# ログを辿るブランチを指定する
# git log <branch>

# コミットの取り消し
# ステージングした内容を取り消すが（アンステージング）、変更した内容は保持される
git reset <file>
# @option --hard  直前のコミット時点に完全に一致した状態まで戻す。作業中の内容も全て破棄される
git reset --hard
# 指定したコミット時点まで戻しつつ、現時点までの変更内容は保持される
git reset <commit id>
# 指定したコミット時点まで戻し、変更内容も破棄する
git reset --hard <commit id>

# 未追跡ファイルの一括削除
# @option -n||--dry-run  削除対象になるファイルの確認
git clean -n
git clean --dry-run
# @option -f  ファイルの強制削除の実行
git clean -f
# @option -d  ディレクトリを対象に行う
git clean -nd
git clean -fd

# その他

# 指定したファイルのワーキングディレクトリの状態を、ステージング済みの内容に上書きする
git checkout <file>
q
# .gitを削除してGitの管理下からプロジェクトを外す
# rm -rf .git