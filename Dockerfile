FROM mcr.microsoft.com/appsvc/staticappsclient:stable
COPY . /
RUN /bin/staticsites/StaticSitesClient upload --app Client --api Api --outputLocation wwwroot --apiToken <apiToken>