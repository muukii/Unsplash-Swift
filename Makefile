
gen:
	java -Dmodels -Dapis -DdebugModels -DdebugOperations -jar /usr/local/Cellar/swagger-codegen/2.1.5/libexec/swagger-codegen-cli.jar generate -i Swagger.yml -t templates -l swift --type-mappings long=Int64 --language-specific-primitives Int16,Int32,Int64,NSDate -o /tmp
