{{/*
Expand the name of the chart.
*/}}
{{- define "dyniva-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "dyniva-chart.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "dyniva-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "dyniva-chart.labels" -}}
helm.sh/chart: {{ include "dyniva-chart.chart" . }}
{{ include "dyniva-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "dyniva-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "dyniva-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "dyniva-chart.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "dyniva-chart.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Return the site environment
*/}}
{{- define "drupal.env" -}}
{{- if .Values.podEnv.drupalSiteEnv }}
    {{- printf "%s" (.Values.podEnv.drupalSiteEnv ) -}}
{{- else -}}
    {{- printf "prod" -}}
{{- end -}}
{{- end -}}

{{/*
Return the site environment
*/}}
{{- define "drupal.uploadSize" -}}
{{- if .Values.podEnv.drupalUploadSize }}
    {{- printf "%s" (.Values.podEnv.drupalUploadSize ) -}}
{{- else -}}
    {{- printf "32M" -}}
{{- end -}}
{{- end -}}

{{/*
Return the databaseType
*/}}
{{- define "drupal.databaseType" -}}
{{- if .Values.podEnv.drupalDatabaseType }}
    {{- printf "%s" (.Values.podEnv.drupalDatabaseType ) -}}
{{- else -}}
    {{- printf "mysql" -}}
{{- end -}}
{{- end -}}

{{/*
Return the databaseport
*/}}
{{- define "drupal.databasePort" -}} 
{{- if .Values.podEnv.drupalDatabasePort }}
    {{- printf "%d" (.Values.podEnv.drupalDatabasePort | int) -}}
{{- else -}}
    {{- printf "3306" -}}
{{- end -}}
{{- end -}}

{{/*
Return the databaseHost
*/}}
{{- define "drupal.databaseHost" -}}
{{- if .Values.podEnv.drupalDatabaseHost }}
    {{- printf "%s" (.Values.podEnv.drupalDatabaseHost ) -}}
{{- else -}}
    {{- printf "" -}}
{{- end -}}
{{- end -}}

{{/*
Return the databaseUser
*/}}
{{- define "drupal.databaseUser" -}}
{{- if .Values.podEnv.drupalDatabaseUser }}
    {{- printf "%s" (.Values.podEnv.drupalDatabaseUser ) -}}
{{- else -}}
    {{- printf "root" -}}
{{- end -}}
{{- end -}}

{{/*
Return the databasePassword
*/}}
{{- define "drupal.databasePassword" -}}
{{- if .Values.podEnv.drupalDatabasePassword }}
    {{- printf "%s" (.Values.podEnv.drupalDatabasePassword ) -}}
{{- else -}}
    {{- printf "" -}}
{{- end -}}
{{- end -}}

{{/*
Return the databaseName
*/}}
{{- define "drupal.databaseName" -}}
{{- if .Values.podEnv.drupalDatabaseName }}
    {{- printf "%s" (.Values.podEnv.drupalDatabaseName ) -}}
{{- else -}}
    {{- printf "dyniva_cms" -}}
{{- end -}}
{{- end -}}

Return drupal subdir
*/}}
{{- define "drupal.subdir" -}}
{{- if .Values.ingress_subdir.path }}
    {{- printf "%s" ( trimPrefix "/" .Values.ingress_subdir.path ) -}}
{{- else -}}
    {{- printf "" -}}
{{- end -}}
{{- end -}}