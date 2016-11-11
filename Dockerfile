FROM ubuntu:yakkety

RUN apt-get update && apt-get install -y \
        curl \
        apt-transport-https \
        && curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
        && echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list \
        && apt-get update && apt-get install -y dbus-x11 xvfb google-chrome-stable firefox curl --no-install-recommends \
        && apt-get purge --auto-remove -y curl apt-transport-https \
        && rm -rf /var/lib/apt/lists/*

ADD xvfb-chrome /usr/bin/xvfb-chrome
ADD xvfb-firefox /usr/bin/xvfb-firefox

RUN chmod a+x /usr/bin/xvfb-chrome
RUN chmod a+x /usr/bin/xvfb-firefox
