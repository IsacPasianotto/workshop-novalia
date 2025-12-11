
from(bucket: "default")
  |> range(start: 2025-01-01T00:00:00Z)
  |> filter(fn: (r) => r._measurement == "cpu")
  |> limit(n:10)


from(bucket: "default")
  |> range(start: 2025-01-01T00:00:00Z)
  |> filter(fn: (r) => r._measurement == "cpu" and r._field == "usage_system")