# jsonnet-monitoring-starter

This project is a [Jsonnet] starter kit used to scaffold monitoring with [Prometheus] and [Grafana].
I put this reference together after spending several days trying to wrap my head around projects using jsonnet.
It aims to simplify the development of monitoring for open source projects.
The current starter supports generating:

* [Prometheus Rules]
* [Prometheus Alerts]
* [Grafana Dashboards]

[Jsonnet]: http://jsonnet.org/
[Prometheus]: https://prometheus.io/
[Grafana]: https://grafana.com/

[Prometheus Rules]: https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/
[Prometheus Alerts]: https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/
[Grafana Dashboards]: https://prometheus.io/docs/visualization/grafana/

## How to use

1. Fork and clone the project
2. Copy `service-template` for each application in your system
3. Update `mixin.libsonnet` to import your applications
4. Add dashboards, rules, and alerts for each application

## Generating config files

You can easily generate the configuration files, but first you'll need a few tools.

```bash
$ go get github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb
$ brew install jsonnet
```

Once you have the proper tooling, you'll want to install the project dependencies.

```bash
$ jb install
```

Finally, run `make` to generate the configuration files.

## Inspiration / References

* [kubernetes-mixin](https://github.com/kubernetes-monitoring/kubernetes-mixin/)
  * Largely initial inspiration.
    While the layout was simple, it didn't have the composition I was looking for.
* My updates to [deps.cloud](https://github.com/depscloud/deploy/pull/39/files)
  * Follows the pattern described herein.
    Was my first hands on with jsonnet.
    Blog post to come soon!
* [GitLab](https://gitlab.com/gitlab-com/runbooks)

![](https://www.google-analytics.com/collect?v=1&tid=UA-172921913-1&cid=555&t=pageview&ec=repo&ea=open&dp=%2Fjsonnet-monitoring-starter&dt=%2Fjsonnet-monitoring-starter)
