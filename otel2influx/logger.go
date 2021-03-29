package otel2influx

// Logger must be implemented by the user of this package.
// Emitted logs indicate non-fatal conversion errors.
type Logger interface {
	Debug(msg string, kv ...interface{})
}

// NoopLogger is a no-op implementation of Logger.
type NoopLogger struct{}

func (_ NoopLogger) Debug(_ string, _ ...interface{}) {}

// errorLogger intercepts log entries emitted by this package,
// adding key "error" before any error type value.
//
// errorLogger panicks if the resulting kv slice length is odd.
type errorLogger struct {
	Logger
}

func (e *errorLogger) Debug(msg string, kv ...interface{}) {
	for i := range kv {
		if _, isError := kv[i].(error); isError {
			kv = append(kv, nil)
			copy(kv[i+1:], kv[i:])
			kv[i] = "error"
		}
	}
	if len(kv)%2 != 0 {
		panic("log entry kv count is odd")
	}
	e.Logger.Debug(msg, kv...)
}