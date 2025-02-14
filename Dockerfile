FROM odoo:16.0
LABEL maintainer="CodeTrade India Pvt. Ltd. <chandprakash@codetrade.io>"

SHELL ["/bin/bash", "-xo", "pipefail", "-c"]

# Generate locale C.UTF-8 for postgres and general locale data
ENV LANG=en_US.UTF-8

# Install redis Python package
RUN pip install redis
COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./session_redis /mnt/extra-addons

# Start odoo
CMD ["odoo"]

