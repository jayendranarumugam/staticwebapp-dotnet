FROM mcr.microsoft.com/appsvc/staticappsclient:stable
ARG API_TOKEN
ENV API_TOKEN=${API_TOKEN}
COPY . /
RUN /bin/staticsites/StaticSitesClient upload --app Client --api Api --outputLocation wwwroot --apiToken $API_TOKEN
