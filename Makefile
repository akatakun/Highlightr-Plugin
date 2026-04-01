VAULT_PLUGIN_DIR := ~/Obsidian\ Vault/.obsidian/plugins/highlightr-plugin

.PHONY: build deploy clean

build:
	npm run build

deploy: build
	mkdir -p $(VAULT_PLUGIN_DIR)
	cp main.js manifest.json styles.css $(VAULT_PLUGIN_DIR)/

clean:
	rm -f main.js
