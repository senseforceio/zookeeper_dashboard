FROM gliderlabs/alpine:3.3

ADD package/zookeeper-dashboard /pkg

WORKDIR /pkg

RUN apk --no-cache add python py-pip && \
    pip install -r requirements.txt && \
    rm -rf requirements.txt && \
    rm -rf zookeeper_dashboard/settings.py && \
    ln -s /config/settings.py zookeeper_dashboard/settings.py

VOLUME ["/config"]
EXPOSE 8000

CMD ["/usr/bin/gunicorn", "-b", "0.0.0.0:8000", "-w", "4", "zookeeper_dashboard.wsgi:application"]

