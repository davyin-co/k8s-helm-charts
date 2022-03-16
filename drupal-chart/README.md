# drupal-chart

![Version: 1.6](https://img.shields.io/badge/Version-1.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 8.9](https://img.shields.io/badge/AppVersion-8.9-informational?style=flat-square)

部署Drupal网站，镜像制作方式参考Dockerfile
```
FROM sparkpos/docker-nginx-php:7.4-alpine
ENV DRUPAL_WEB_ROOT docroot
ADD . /var/www/html
RUN mkdir docroot/sites/default/files -p && \
    chmod -R 777 docroot/sites/default/files && \
    cd /var/www/html && \
    composer drupal:scaffold -q
VOLUME /var/www/html/docroot/sites/default/files
```

**Homepage:** <https://github.com/davyin-co/k8s-helm-charts/drupal-chart>

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
| image.repository | string | `"10.16.1.81:30885/sysu/sysu-dist"` |  |
| image.tag | string | `"v1.5"` |  |
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
| persistence.accessMode | string | `"ReadWriteMany"` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.mountPath | string | `"/var/www/html/docroot/sites/default/files"` |  |
| persistence.size | string | `"10G"` |  |
| persistence.storageClass | string | `"managed-nfs-storage"` |  |
| podAnnotations | object | `{}` |  |
| podEnv.drupalDatabaseHost | string | `""` |  |
| podEnv.drupalDatabaseName | string | `""` |  |
| podEnv.drupalDatabasePassword | string | `""` |  |
| podEnv.drupalDatabasePort | int | `3306` |  |
| podEnv.drupalDatabaseType | string | `"mysql"` |  |
| podEnv.drupalDatabaseUser | string | `""` |  |
| podEnv.drupalHashSalt | string | `""` |  |
| podEnv.drupalSiteEnv | string | `"dev"` |  |
| podEnv.drupalUploadSize | string | `"32M"` |  |
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