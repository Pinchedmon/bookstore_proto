.PHONY: proto-gen

proto-gen:
	@echo "Генерируем proto для User..."
	protoc --go_out=./pb/ --go-grpc_out=./pb/ -I proto proto/user/user.proto --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative
	@echo "Генерируем proto для Catalog..."
	protoc --go_out=./pb/ --go-grpc_out=./pb/ -I proto proto/catalog/catalog.proto --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative
	@echo "Генерируем proto для Order..."
	protoc --go_out=./pb/ --go-grpc_out=./pb/ -I proto proto/order/order.proto --go_opt=paths=source_relative --go-grpc_opt=paths=source_relative
	@echo "Готово! Проверь pb/ для .pb.go файлов."