FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY app.py /app/
COPY requirements.txt /app/
COPY boston_housing_prediction.joblib/ /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt
## Step 4:
# Expose port 80
Expose 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
