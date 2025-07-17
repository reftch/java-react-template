.PHONY: init dev
.SILENT:

init:
	npm install --loglevel verbose --prefix app/web

watch:
	./gradlew -t classes  

bootRun:
	./gradlew bootRun

esbuild:
	npm run dev	--prefix app/web 

dev:
	make -j3 esbuild bootRun watch

clean:
	rm -rf app/web/node_modules build
	gradle clean 