defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Logs.V1.ExportLogsServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:resource_logs, 1,
    repeated: true,
    type: SpandexOTLP.Opentelemetry.Proto.Logs.V1.ResourceLogs,
    json_name: "resourceLogs"
  )
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Logs.V1.ExportLogsServiceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Logs.V1.LogsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "opentelemetry.proto.collector.logs.v1.LogsService",
    protoc_gen_elixir_version: "0.10.0"

  rpc(
    :Export,
    SpandexOTLP.Opentelemetry.Proto.Collector.Logs.V1.ExportLogsServiceRequest,
    SpandexOTLP.Opentelemetry.Proto.Collector.Logs.V1.ExportLogsServiceResponse
  )
end

defmodule SpandexOTLP.Opentelemetry.Proto.Collector.Logs.V1.LogsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: SpandexOTLP.Opentelemetry.Proto.Collector.Logs.V1.LogsService.Service
end
