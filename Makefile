build:
	helm package autoneg

login:
	helm registry login -u USERNAME ghcr.io 

publish:
	helm push autoneg-*.tgz oci://ghcr.io/jusch/autoneg-helm

clean:
	rm autoneg-*.tgz

release: build publish clean