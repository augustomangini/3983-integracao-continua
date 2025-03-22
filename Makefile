lint:
	MSYS_NO_PATHCONV=1 docker run --rm -it -v $(CURDIR):/app -w /app golangci/golangci-lint golangci-lint run controllers/ database/ models/ routes/
test:
	ddocker-compose exec app go test ./...
start:
	docker compose up -d
ci: start lint test
