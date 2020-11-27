FROM python:3-alpine

# Config working folder
RUN mkdir /calculator
WORKDIR /calculator

# Install components
RUN pip install Flask

# Open ports
EXPOSE 5000

# Copy files
COPY ./main.py .
ENV FLASK_DEBUG=1
ENV FLASK_APP=main.py

# Exec Flask
CMD [ "flask", "run", "--host=0.0.0.0" ]
