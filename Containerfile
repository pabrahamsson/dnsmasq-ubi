FROM registry.access.redhat.com/ubi8/ubi-minimal:8.5
RUN microdnf upgrade && \
    microdnf install --nodocs dnsmasq
USER 1001
ENTRYPOINT ["dnsmasq"]
CMD ["-v"]
