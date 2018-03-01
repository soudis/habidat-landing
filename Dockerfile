FROM nginx

RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y git ca-certificates

RUN rm -r /usr/share/nginx/html/*

RUN git clone https://github.com/soudis/habidat-landing.git /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

RUN envsubst < index.template.html > index.html
