helm repo add prometheus-community https://prometheus-community.github.io/helm-chartsadminPassword
helm install monitoring prometheus-community/kube-prometheus-stack
helm show values prometheus-community/kube-prometheus-stack
helm repo add bitnami https://charts.bitnami.com/bitnami

# Applying new config to release 
helm upgrade monitoring prometheus-community/kube-prometheus-stack --values values.yaml

# For preventing snowflake clusters we use helm pull
helm pull prometheus-community/kube-prometheus-stack 
#=> downloads tgz file

# Non-zip folder
helm pull prometheus-community/kube-prometheus-stack --untar

#NOTE: values file in chart source code most'nt be deleted (its structure must also stay the same as original)

# Applying local chart with custom values 
helm install monitoring .\kube-prometheus-stack\

helm upgrade monitoring --values=my-values.yaml .

# Checking if values have been applied
helm show values prometheus-community/kube-prometheus-stack

helm get values monitoring

# Generating kubernetes yaml files (In this approach we no longer need to install helm in system)
helm template monitoring ./kube-prometheus-stack/ --values=.//kube-prometheus-stack/my-values.yaml > monitoring-stack.yaml

# Benefits of using dynamic features of helm charts
# Creating helm chart
helm create moeinTest

# yaml templates are created using GGGOOOOO yaml templating language