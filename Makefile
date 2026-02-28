# Soul Cinnamon Theme Makefile
# Build requirements: sassc

SASSC = sassc
SRC_DIR = src/sass
ASSETS_DIR = src/assets
OUT_DIR = dist
THEMES_DIR = ~/.themes

.PHONY: all clean dark light blues evergreen gruvbox metalic material vintage matrix rainbow cupertino install

all: dark light blues evergreen gruvbox metalic material vintage matrix rainbow cupertino

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

blues:
	@echo "Building Soul Blues..."
	@mkdir -p $(OUT_DIR)/Soul-Blues/cinnamon
	$(SASSC) $(SRC_DIR)/soul-blues.scss $(OUT_DIR)/Soul-Blues/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Blues/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Blues/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-blues.theme $(OUT_DIR)/Soul-Blues/index.theme
	@echo "Soul Blues built in $(OUT_DIR)/Soul-Blues"

evergreen:
	@echo "Building Soul Evergreen..."
	@mkdir -p $(OUT_DIR)/Soul-Evergreen/cinnamon
	$(SASSC) $(SRC_DIR)/soul-evergreen.scss $(OUT_DIR)/Soul-Evergreen/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Evergreen/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Evergreen/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-evergreen.theme $(OUT_DIR)/Soul-Evergreen/index.theme
	@echo "Soul Evergreen built in $(OUT_DIR)/Soul-Evergreen"

gruvbox:
	@echo "Building Soul Gruvbox..."
	@mkdir -p $(OUT_DIR)/Soul-Gruvbox/cinnamon
	$(SASSC) $(SRC_DIR)/soul-gruvbox.scss $(OUT_DIR)/Soul-Gruvbox/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Gruvbox/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Gruvbox/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-gruvbox.theme $(OUT_DIR)/Soul-Gruvbox/index.theme
	@echo "Soul Gruvbox built in $(OUT_DIR)/Soul-Gruvbox"

metalic:
	@echo "Building Soul Metalic..."
	@mkdir -p $(OUT_DIR)/Soul-Metalic/cinnamon
	$(SASSC) $(SRC_DIR)/soul-metalic.scss $(OUT_DIR)/Soul-Metalic/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Metalic/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Metalic/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-metalic.theme $(OUT_DIR)/Soul-Metalic/index.theme
	@echo "Soul Metalic built in $(OUT_DIR)/Soul-Metalic"

material:
	@echo "Building Soul Material..."
	@mkdir -p $(OUT_DIR)/Soul-Material/cinnamon
	$(SASSC) $(SRC_DIR)/soul-material.scss $(OUT_DIR)/Soul-Material/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Material/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Material/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-material.theme $(OUT_DIR)/Soul-Material/index.theme
	@echo "Soul Material built in $(OUT_DIR)/Soul-Material"

vintage:
	@echo "Building Soul Vintage..."
	@mkdir -p $(OUT_DIR)/Soul-Vintage/cinnamon
	$(SASSC) $(SRC_DIR)/soul-vintage.scss $(OUT_DIR)/Soul-Vintage/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Vintage/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Vintage/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-vintage.theme $(OUT_DIR)/Soul-Vintage/index.theme
	@echo "Soul Vintage built in $(OUT_DIR)/Soul-Vintage"

matrix:
	@echo "Building Soul Matrix..."
	@mkdir -p $(OUT_DIR)/Soul-Matrix/cinnamon
	$(SASSC) $(SRC_DIR)/soul-matrix.scss $(OUT_DIR)/Soul-Matrix/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Matrix/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Matrix/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-matrix.theme $(OUT_DIR)/Soul-Matrix/index.theme
	@echo "Soul Matrix built in $(OUT_DIR)/Soul-Matrix"

rainbow:
	@echo "Building Soul Rainbow..."
	@mkdir -p $(OUT_DIR)/Soul-Rainbow/cinnamon
	$(SASSC) $(SRC_DIR)/soul-rainbow.scss $(OUT_DIR)/Soul-Rainbow/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Rainbow/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Rainbow/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-rainbow.theme $(OUT_DIR)/Soul-Rainbow/index.theme
	@echo "Soul Rainbow built in $(OUT_DIR)/Soul-Rainbow"

cupertino:
	@echo "Building Soul Cupertino..."
	@mkdir -p $(OUT_DIR)/Soul-Cupertino/cinnamon
	$(SASSC) $(SRC_DIR)/soul-cupertino.scss $(OUT_DIR)/Soul-Cupertino/cinnamon/cinnamon.css
	@cp -r $(ASSETS_DIR)/dark-assets $(OUT_DIR)/Soul-Cupertino/cinnamon/ 2>/dev/null || true
	@cp -r $(ASSETS_DIR)/common-assets $(OUT_DIR)/Soul-Cupertino/cinnamon/ 2>/dev/null || true
	@cp src/templates/index-cupertino.theme $(OUT_DIR)/Soul-Cupertino/index.theme
	@echo "Soul Cupertino built in $(OUT_DIR)/Soul-Cupertino"

install: all
	@echo "Installing Soul Cinnamon Theme..."
	@cp -r $(OUT_DIR)/* $(THEMES_DIR) 2>/dev/null || true
	@echo "Soul Cinnamon Theme installed to $(THEMES_DIR)"

clean:
	@rm -rf $(OUT_DIR)
	@echo "Cleaned build directory."
