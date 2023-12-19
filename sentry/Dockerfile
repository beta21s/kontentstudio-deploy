FROM apache/airflow:2.7.1

COPY requirements.txt requirements.txt
COPY config/airflow.cfg /opt/airflow/airflow.cfg

RUN pip install -r requirements.txt