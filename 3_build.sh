docker build -t ghcr.io/ren15/knative_try/python-flask app/python_flask \
    --label "org.opencontainers.image.source=https://github.com/ren15/knative_try"
docker push ghcr.io/ren15/knative_try/python-flask

docker build -t ghcr.io/ren15/knative_try/helloworld-go helloworld-go \
    --label "org.opencontainers.image.source=https://github.com/ren15/knative_try"
docker push ghcr.io/ren15/knative_try/helloworld-go