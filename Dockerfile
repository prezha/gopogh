FROM golang:1.23-alpine
WORKDIR /src/
COPY ./ ./
RUN apk -U add make git
RUN go get github.com/GeertJohan/go.rice
RUN go get github.com/GeertJohan/go.rice/rice
RUN make build
RUN install ./out/gopogh /bin/gopogh
RUN chmod +x ./text2html.sh
RUN cp ./text2html.sh /text2html.sh


