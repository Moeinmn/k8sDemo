helm repo add prometheus-community https://prometheus-community.github.io/helm-chartsadminPassword
helm install monitoring prometheus-community/kube-prometheus-stack
helm show values prometheus-community/kube-prometheus-stack
helm repo add bitnami https://charts.bitnami.com/bitnami