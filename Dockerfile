FROM reg.cismet.de/abstract/cids-distribution:6.3.2-debian

ARG IMAGE_VERSION=unknown

ENV GIT_DISTRIBUTION_PROJECT=cismet/cids-distribution-uim2020-di
ENV CIDS_ACCOUNT_EXTENSION UIM2020-di
ENV UPDATE_SNAPSHOTS -U -Dmaven.clean.failOnError=false -Dmaven.test.skip=true

ENV TZ=Europe/Vienna
ENV LANG de_AT.UTF-8
ENV LANGUAGE de_AT:de
ENV LC_ALL de_AT.UTF-8

LABEL maintainer="Pascal Dihé <pascal.dihe@cismet.de>" \
   de.cismet.cids.distribution.name="${GIT_DISTRIBUTION_PROJECT}" \
   de.cismet.cids.distribution.version="${IMAGE_VERSION}" \
de.cismet.cids.distribution.description="cids UIM2020-DI Distribution Runtime Image"