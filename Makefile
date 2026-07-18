# zenn-content
PORT ?= 8000

preview:            ## ローカルプレビュー (http://localhost:$(PORT))
	npx zenn preview --port $(PORT)

new:                ## 新しい記事を作成 (make new SLUG=my-article)
	npx zenn new:article $(if $(SLUG),--slug $(SLUG))

.PHONY: preview new
