defmodule Opentelemetry.Proto.Collector.Logs.V1.ExportLogsServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field(:resource_logs, 1,
    repeated: true,
    type: Opentelemetry.Proto.Logs.V1.ResourceLogs,
    json_name: "resourceLogs"
  )
end

defmodule Opentelemetry.Proto.Collector.Logs.V1.ExportLogsServiceResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end

defmodule Opentelemetry.Proto.Collector.Logs.V1.LogsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "opentelemetry.proto.collector.logs.v1.LogsService",
    protoc_gen_elixir_version: "0.10.0"

  rpc(
    :Export,
    Opentelemetry.Proto.Collector.Logs.V1.ExportLogsServiceRequest,
    Opentelemetry.Proto.Collector.Logs.V1.ExportLogsServiceResponse
  )
end

defmodule Opentelemetry.Proto.Collector.Logs.V1.LogsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Opentelemetry.Proto.Collector.Logs.V1.LogsService.Service
end
