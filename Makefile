# Soul Cinnamon Theme Makefile
# Build requirements: sassc

SASSC = sassc
SRC_DIR = src/sass
ASSETS_DIR = src/assets
OUT_DIR = dist

.PHONY: all clean dark light

all: dark light

dark:
	@echo "Building Soul Dark..."
	@mkdir -p $(OUT_DIR)/Soul-Dark/cinnamon
	$(SASSC) $(SRC_DIR)/soul-dark.scss $(OUT_DIR)/Soul-Dark/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Dark/cinnamon/ 2>/dev/null || true
	@cp src/templates/metadata-dark.json $(OUT_DIR)/Soul-Dark/metadata.json
	@cp src/templates/index-dark.theme $(OUT_DIR)/Soul-Dark/index.theme
	@cp src/templates/thumbnail-dark.png $(OUT_DIR)/Soul-Dark/cinnamon/thumbnail.png
	@echo "Soul Dark built in $(OUT_DIR)/Soul-Dark"

light:
	@echo "Building Soul Light..."
	@mkdir -p $(OUT_DIR)/Soul-Light/cinnamon
	$(SASSC) $(SRC_DIR)/soul-light.scss $(OUT_DIR)/Soul-Light/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Light/cinnamon/ 2>/dev/null || true
	@cp src/templates/metadata-light.json $(OUT_DIR)/Soul-Light/metadata.json
	@cp src/templates/index-light.theme $(OUT_DIR)/Soul-Light/index.theme
	@cp src/templates/thumbnail-light.png $(OUT_DIR)/Soul-Light/cinnamon/thumbnail.png 
	@echo "Soul Light built in $(OUT_DIR)/Soul-Light"

clean:
	@rm -rf $(OUT_DIR)
	@echo "Cleaned build directory."
