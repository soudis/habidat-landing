FROM nginx

RUN git clone https://github.com/soudis/habidat-landing.git /usr/share/nginx/html

RUN envsubst < index.template.html > index.html
