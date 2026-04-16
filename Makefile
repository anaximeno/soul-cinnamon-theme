# Soul Cinnamon Theme Makefile
# Build requirements: sassc

SASSC = sassc
SRC_DIR = src/sass
ASSETS_DIR = src/assets
OUT_DIR = dist
THEMES_DIR = ~/.themes

.PHONY: all clean dark light solarized-dark solarized-light install

all: dark light solarized-dark solarized-light

dark:
	@echo "Building Soul Dark..."
	@mkdir -p $(OUT_DIR)/Soul-Dark/cinnamon
	$(SASSC) $(SRC_DIR)/soul-dark.scss $(OUT_DIR)/Soul-Dark/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Dark/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-dark.theme $(OUT_DIR)/Soul-Dark/index.theme
	@cp src/templates/thumbnail-dark.png $(OUT_DIR)/Soul-Dark/cinnamon/thumbnail.png
	@echo "Soul Dark built in $(OUT_DIR)/Soul-Dark"

light:
	@echo "Building Soul Light..."
	@mkdir -p $(OUT_DIR)/Soul-Light/cinnamon
	$(SASSC) $(SRC_DIR)/soul-light.scss $(OUT_DIR)/Soul-Light/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Light/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-light.theme $(OUT_DIR)/Soul-Light/index.theme
	@cp src/templates/thumbnail-light.png $(OUT_DIR)/Soul-Light/cinnamon/thumbnail.png
	@echo "Soul Light built in $(OUT_DIR)/Soul-Light"

solarized-dark:
	@echo "Building Soul Solarized Dark..."
	@mkdir -p $(OUT_DIR)/Soul-Solarized-Dark/cinnamon
	$(SASSC) $(SRC_DIR)/soul-solarized-dark.scss $(OUT_DIR)/Soul-Solarized-Dark/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Solarized-Dark/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-solarized-dark.theme $(OUT_DIR)/Soul-Solarized-Dark/index.theme
	@cp src/templates/thumbnail-dark.png $(OUT_DIR)/Soul-Solarized-Dark/cinnamon/thumbnail.png 2>/dev/null || true
	@echo "Soul Solarized Dark built in $(OUT_DIR)/Soul-Solarized-Dark"

solarized-light:
	@echo "Building Soul Solarized Light..."
	@mkdir -p $(OUT_DIR)/Soul-Solarized-Light/cinnamon
	$(SASSC) $(SRC_DIR)/soul-solarized-light.scss $(OUT_DIR)/Soul-Solarized-Light/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Solarized-Light/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-solarized-light.theme $(OUT_DIR)/Soul-Solarized-Light/index.theme
	@cp src/templates/thumbnail-light.png $(OUT_DIR)/Soul-Solarized-Light/cinnamon/thumbnail.png 2>/dev/null || true
	@echo "Soul Solarized Light built in $(OUT_DIR)/Soul-Solarized-Light"

install: all
	@echo "Installing Soul Cinnamon Theme..."
	@mkdir -p $(THEMES_DIR)
	@cp -r $(OUT_DIR)/* $(THEMES_DIR) 2>/dev/null || true
	@echo "Soul Cinnamon Theme installed to $(THEMES_DIR)"

clean:
	@rm -rf $(OUT_DIR)
	@echo "Cleaned build directory."
