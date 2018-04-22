FROM python:3.6
ARG FLASK_VER=0.12
RUN groupadd appgroup && \
    useradd --system --group appgroup appuser && \
    mkdir /opt/myapp && \
    chgrp -R appgroup /opt/myapp && \
    chown -R appuser /opt/myapp && \
    pip install flask>=${FLASK_VER}
COPY --chown=appuser:appgroup main.py /opt/myapp/main.py
USER appuser
WORKDIR /opt/myapp
CMD ["python", "main.py"]
