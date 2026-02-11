# Soul Cinnamon Theme Makefile
# Build requirements: sassc

SASSC = sassc
SRC_DIR = src/sass
ASSETS_DIR = src/assets
OUT_DIR = dist
THEMES_DIR = ~/.themes


.PHONY: all clean dark light ink matrix colorfection comical install

all: dark light ink matrix colorfection comical

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

ink:
	@echo "Building Soul Ink..."
	@mkdir -p $(OUT_DIR)/Soul-Ink/cinnamon
	$(SASSC) $(SRC_DIR)/soul-ink.scss $(OUT_DIR)/Soul-Ink/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Ink/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-ink.theme $(OUT_DIR)/Soul-Ink/index.theme
	@cp src/templates/thumbnail-ink.png $(OUT_DIR)/Soul-Ink/cinnamon/thumbnail.png
	@echo "Soul Ink built in $(OUT_DIR)/Soul-Ink"

matrix:
	@echo "Building Soul Matrix..."
	@mkdir -p $(OUT_DIR)/Soul-Matrix/cinnamon
	$(SASSC) $(SRC_DIR)/soul-matrix.scss $(OUT_DIR)/Soul-Matrix/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Matrix/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-matrix.theme $(OUT_DIR)/Soul-Matrix/index.theme
	@cp src/templates/thumbnail-matrix.png $(OUT_DIR)/Soul-Matrix/cinnamon/thumbnail.png
	@echo "Soul Matrix built in $(OUT_DIR)/Soul-Matrix"

colorfection:
	@echo "Building Soul Colorfection..."
	@mkdir -p $(OUT_DIR)/Soul-Colorfection/cinnamon
	$(SASSC) $(SRC_DIR)/soul-colorfection.scss $(OUT_DIR)/Soul-Colorfection/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Colorfection/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-colorfection.theme $(OUT_DIR)/Soul-Colorfection/index.theme
	@cp src/templates/thumbnail-colorfection.png $(OUT_DIR)/Soul-Colorfection/cinnamon/thumbnail.png
	@echo "Soul Colorfection built in $(OUT_DIR)/Soul-Colorfection"

comical:
	@echo "Building Soul Comical..."
	@mkdir -p $(OUT_DIR)/Soul-Comical/cinnamon
	$(SASSC) $(SRC_DIR)/soul-comical.scss $(OUT_DIR)/Soul-Comical/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/* $(OUT_DIR)/Soul-Comical/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-comical.theme $(OUT_DIR)/Soul-Comical/index.theme
	@cp src/templates/thumbnail-comical.png $(OUT_DIR)/Soul-Comical/cinnamon/thumbnail.png
	@echo "Soul Comical built in $(OUT_DIR)/Soul-Comical"

install: all
	@echo "Installing Soul Cinnamon Theme..."
	@cp -r $(OUT_DIR)/* $(THEMES_DIR) 2>/dev/null || true
	@echo "Soul Cinnamon Theme installed to $(THEMES_DIR)"

clean:
	@rm -rf $(OUT_DIR)
	@echo "Cleaned build directory."
