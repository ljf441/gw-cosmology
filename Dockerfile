FROM python:3.12.3

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN mkdir -p data figures output

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install jupyter

COPY matched_filtering.ipynb bayesian.ipynb cosmology.ipynb .

COPY data/ data/

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--notebook-dir=/app"]