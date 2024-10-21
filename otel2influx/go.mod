module github.com/emqx-ecp-devops/influxdb-observability/otel2influx

go 1.21.0

toolchain go1.21.10

require (
	github.com/influxdata/influxdb-observability/common v0.5.8
	github.com/influxdata/influxdb-observability/otel2influx v0.5.12
	github.com/stretchr/testify v1.9.0
	go.opentelemetry.io/collector/consumer v0.101.0
	go.opentelemetry.io/collector/pdata v1.8.0
	go.opentelemetry.io/collector/semconv v0.101.0
	go.uber.org/multierr v1.11.0
	golang.org/x/exp v0.0.0-20240222234643-814bf88cf225
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	golang.org/x/net v0.23.0 // indirect
	golang.org/x/sys v0.18.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240311173647-c811ad7063a7 // indirect
	google.golang.org/grpc v1.63.2 // indirect
	google.golang.org/protobuf v1.34.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/emqx-ecp-devops/influxdb-observability/common => ../common
