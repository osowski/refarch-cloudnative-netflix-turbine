echo "Starting turbine ........... streaming on port 8989"
docker run --name netflix-turbine -p 8989:8989 -p 8990:8990 --env-file ~/ibm-cloud-architecture/refarch-cloudnative-container-utils/env/env-eureka-only-local -d netflix-turbine:latest
