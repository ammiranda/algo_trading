FROM public.ecr.aws/lambda/python:3.13 AS build-image

# Set working directory to Lambda task root where code should be placed
WORKDIR ${LAMBDA_TASK_ROOT}

# Copy requirements.txt
COPY requirements.txt .
COPY .env .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD [ "app.handler" ]