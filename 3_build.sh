docker build -t ghcr.io/ren15/knative_try/helloworld-python app/helloworld-python \
    --label "org.opencontainers.image.source=https://github.com/ren15/knative_try" &

docker build -t ghcr.io/ren15/knative_try/helloworld-go app/helloworld-go \
    --label "org.opencontainers.image.source=https://github.com/ren15/knative_try" &

docker build -t ghcr.io/ren15/knative_try/helloworld-rust app/helloworld-rust \
    --label "org.opencontainers.image.source=https://github.com/ren15/knative_try" &

wait

docker push ghcr.io/ren15/knative_try/helloworld-python
docker push ghcr.io/ren15/knative_try/helloworld-go
docker push ghcr.io/ren15/knative_try/helloworld-rust
