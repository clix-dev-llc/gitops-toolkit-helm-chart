build:
	helm package .
	helm repo index .