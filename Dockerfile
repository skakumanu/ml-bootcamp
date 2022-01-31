# ~/ml-bootcamp/Dockerfile

FROM python:3.6.5-slim

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip
RUN pip install --upgrade Pillow
RUN pip --no-cache-dir install numpy pandas seaborn sklearn jupyter matplotlib statsmodels tensorflow==1.15.0

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]
