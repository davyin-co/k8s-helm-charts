# db-backup

![Version: 0.1](https://img.shields.io/badge/Version-0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

数据库备份，基于[tiredofit/db-backup](https://hub.docker.com/r/tiredofit/db-backup)镜像。

**Homepage:** <https://github.com/davyin-co/k8s-helm-charts/mysql-backup>

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
| database.host | string | `""` |  |
| database.password | string | `""` |  |
| database.port | int | `3306` |  |
| database.type | string | `"mysql"` |  |
| database.user | string | `"root"` |  |
| db_backup.crontab | string | `"2 2 * * *"` |  |
| db_backup.debug_mode | string | `"false"` |  |
| db_backup.keep_days | int | `7` |  |
| db_backup.local_destination | string | `""` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"docker.io/tiredofit/db-backup"` |  |
| image.tag | string | `"2.11.3"` |  |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| tolerations | list | `[]` |  |