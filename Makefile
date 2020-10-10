all: alerts dashboards rules

alerts:
	@mkdir -p out
	jsonnet -J vendor -S pkg/alerts.jsonnet > out/prometheus_alerts.yaml

dashboards:
	@mkdir -p out/dashboards
	jsonnet -J vendor -m out/dashboards pkg/dashboards.jsonnet

rules:
	@mkdir -p out
	jsonnet -J vendor -S pkg/rules.jsonnet > out/prometheus_rules.yaml
