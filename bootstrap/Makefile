USER_NAME =  hoge
EMAIL =  fuga@gmail.com

.PHONY: setup
setup: git

.PHONY: git
git:
	git config --global user.name "${USER_NAME}"
	git config --global user.email ${EMAIL}
	git config --global core.editor 'vim -c "set fenc=utf-8"'
	git config --global color.diff auto
	git config --global color.status auto
	git config --global color.branch auto
	git config --global color.grep auto
	git config --global alias.st status
	git config --global alias.cm commit
	git config --global alias.difff 'diff --word-diff'
	git config --global alias.graph 'log --graph --date=short --decorate=short --pretty=format:"%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s"'
