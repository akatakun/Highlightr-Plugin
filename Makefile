VAULT_PLUGIN_DIR := ~/Obsidian\ Vault/.obsidian/plugins/highlightr-plugin-custom

.PHONY: install build deploy clean

install:
	npm install

node_modules:
	npm install

build: node_modules
	npm run build

deploy: build
	mkdir -p $(VAULT_PLUGIN_DIR)
	cp main.js manifest.json styles.css $(VAULT_PLUGIN_DIR)/

clean:
	rm -f main.js
