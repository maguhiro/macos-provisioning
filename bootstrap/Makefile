USER_NAME =  hoge
EMAIL =  fuga@gmail.com

.PHONY: setup
setup: gitconfig github repository
	@echo "### bootstrap処理が完了しました。"

.PHONY: gitconfig
gitconfig:
	@echo "### gitconfigの設定を行います。"
	@git config --global user.name "${USER_NAME}"
	@git config --global user.email ${EMAIL}
	@git config --global core.editor 'vim -c "set fenc=utf-8"'
	@git config --global color.diff auto
	@git config --global color.status auto
	@git config --global color.branch auto
	@git config --global color.grep auto
	@git config --global alias.st status
	@git config --global alias.cm commit
	@git config --global alias.difff 'diff --word-diff'
	@git config --global alias.graph 'log --graph --date=short --decorate=short --pretty=format:"%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s"'

.PHONY: github
github:
	@echo "### Github用のキーペアを作成します。"
	@ssh-keygen -t rsa -C "${EMAIL}" -f ~/.ssh/id_rsa -N ""
	@cat ~/.ssh/id_rsa.pub | pbcopy
	@open https://github.com/settings/keys
	@echo "ブラウザで https://github.com/settings/keys を開きました。"
	@echo "クリップボードに公開鍵情報をコピーしたのでGithubに登録してください。"

.PHONY: repository
repository:
	@echo "### 環境構築用のリポジトリをCloneします。"
	@mkdir -p ~/dev
	@git clone git@github.com:maguhiro/macos-provisioning.git ~/dev/macos-provisioning
