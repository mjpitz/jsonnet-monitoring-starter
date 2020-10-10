local grafana = import 'github.com/grafana/grafonnet-lib/grafonnet/grafana.libsonnet';
local dashboard = grafana.dashboard;

{
  grafanaDashboards+:: {
    'dashboard-template-grafana.json':
        dashboard.new(
          'Dashboard Template',
          time_from='now-1h',
          tags=[],
          refresh='10s',
        // )
        // .addTemplate(...)
        // .addPanel(...)
        // .addRow(...)
        ),
  },
}
