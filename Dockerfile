# The line below states we will base a new image on the Latest zewelor/bt-mqtt-gateway.
FROM zewelor/bt-mqtt-gateway:latest

# Update pip tool
RUN /usr/local/bin/python -m pip install --upgrade pip

# Install these packages for Python development environment
RUN apk add --no-cache gcc g++ python3 python3-dev py-pip mysql-dev linux-headers libffi-dev openssl-dev

# Install evdev package
RUN pip3 install evdev
