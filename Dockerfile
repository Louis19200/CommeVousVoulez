FROM redocly/cli:latest AS build

WORKDIR /app

COPY src/openAPI.yaml .

RUN redocly build-docs openAPI.yaml -o index.html

FROM nginx:alpine

COPY --from=build /app/index.html /usr/share/nginx/html/

EXPOSE 80