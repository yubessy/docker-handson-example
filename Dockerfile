FROM python:3.6
RUN groupadd appgroup && \
    useradd --system --group appgroup appuser && \
    mkdir /opt/myapp && \
    chgrp -R appgroup /opt/myapp && \
    chown -R appuser /opt/myapp && \
    pip install flask
COPY --chown=appuser:appgroup main.py /opt/myapp/main.py
USER appuser
WORKDIR /opt/myapp
CMD ["python", "main.py"]
