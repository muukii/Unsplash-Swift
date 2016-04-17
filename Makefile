swagger:
	swagger-ejs -i Swagger.yml -o ./Gen --model_template ./model.ejs --operation_template ./operation.ejs
