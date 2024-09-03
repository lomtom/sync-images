# protoc:v3.21.12
FROM swr.cn-east-3.myhuaweicloud.com/lomtom-common/golang:1.20.6-alpine3.18
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest && \
    go install github.com/go-kratos/kratos/cmd/kratos/v2@latest && \
    go install github.com/go-kratos/kratos/cmd/protoc-gen-go-http/v2@latest && \
    go install github.com/google/gnostic/cmd/protoc-gen-openapi@latest && \
    go install github.com/google/wire/cmd/wire@latest
RUN apk add --no-cache protobuf