MAKEFLAGS += --no-print-directory

.PHONY: dev
.SILENT:

.PHONY: build run test app esbuild proto
.SILENT:

ifeq ($(prod),up)
all: prod-up
else ifeq ($(prod),down)
all: prod-down
else ifeq ($(dev),up)
all: dev-up
else ifeq ($(dev),down)
all: dev-down
else ifeq ($(dev),stop)
all: dev-stop
endif
 
# Initialising 
dev-up:
	npm install --loglevel verbose --prefix app/web

# Web
esbuild:
	npm run dev	--prefix app/web 

# Gradle watching
watch:
	./gradlew -t classes  

# Spring Boot app
bootRun:
	./gradlew bootRun

# All togethere
dev:
	make -j3 esbuild bootRun watch

# Cleaning
clean:
	rm -rf app/web/node_modules build
	rm -rf app/api/src/main/resources/static/js
	./gradlew clean 