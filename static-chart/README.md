# static-chart

![Version: 0.1](https://img.shields.io/badge/Version-0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

部署纯HTML的静态网站，镜像制作方式参考Dockerfile
```
FROM davyinsa/nginx
COPY . /usr/share/nginx/html

```

**Homepage:** <https://github.com/davyin-co/k8s-helm-charts/static-chart>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Davyin | wentao.zhang@davyin.com |  |

## Source Code

* <https://www.drupal.org>
* <https://www.davyin.com>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 1.x.x |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `3` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"10.16.1.81:30885/sysu/static_project"` |  |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.host | string | `""` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"Prefix"` |  |
| ingress.tls | list | `[]` |  |
| ingress_subdir.annotations | object | `{}` |  |
| ingress_subdir.className | string | `""` |  |
| ingress_subdir.enabled | bool | `false` |  |
| ingress_subdir.host | string | `""` |  |
| ingress_subdir.path | string | `"/"` |  |
| ingress_subdir.pathType | string | `"Prefix"` |  |
| ingress_subdir.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |