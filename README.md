# GitHub Action & GitHub Container Registry
GitHub Action과 GitHub Container Registry를 사용하여서 Pipeline를 구축하는 프로젝트입니다.

## Stack
- `Golang`
- `Docker`

## Docs
- [GitHub Action](https://github.com/features/actions)
- [GitHub Container Registry](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)

## How to GitHub Container Registry?
```shell
$ docker build --tag qkrgustkd15/github-action-and-github-container-registry:latest .
# or 
$ make docker-build
[+] Building 29.4s (13/13) FINISHED
 => [internal] load build definition from Dockerfile                                                                      0.0s
 => => transferring dockerfile: 337B                                                                                      0.0s
 => [internal] load .dockerignore                                                                                         0.0s
 => => transferring context: 2B                                                                                           0.0s
 => [internal] load metadata for docker.io/library/golang:1.17.5-alpine3.15                                               3.1s
 => [1/9] FROM docker.io/library/golang:1.17.5-alpine3.15@sha256:4918412049183afe42f1ecaf8f5c2a88917c2eab153ce5ecf4bf2d  15.8s
 => => resolve docker.io/library/golang:1.17.5-alpine3.15@sha256:4918412049183afe42f1ecaf8f5c2a88917c2eab153ce5ecf4bf2d5  0.0s
 => => sha256:8474650232fca6807a8567151ee0a6bd2a54ea28cfc93f7824b42267ef4af693 1.36kB / 1.36kB                            0.0s
 => => sha256:d8bf44a3f6b435c736d8b355ea32eb014508656504c77a3ecbc9378c84665762 5.20kB / 5.20kB                            0.0s
 => => sha256:59bf1c3509f33515622619af21ed55bbe26d24913cedbca106468a5fb37a50c3 2.82MB / 2.82MB                            0.5s
 => => sha256:666ba61612fd7c93393f9a5bc1751d8a9929e32d51501dba691da9e8232bc87b 282.16kB / 282.16kB                        0.6s
 => => sha256:8ed8ca4862056a130f714accb3538decfa0663fec84e635d8b5a0a3305353dee 155B / 155B                                0.9s
 => => sha256:4918412049183afe42f1ecaf8f5c2a88917c2eab153ce5ecf4bf2d55c1507b74 1.65kB / 1.65kB                            0.0s
 => => extracting sha256:59bf1c3509f33515622619af21ed55bbe26d24913cedbca106468a5fb37a50c3                                 0.1s
 => => sha256:1ff5b6d8b8c6b6093e19083f398755431fee6120fae681379ad828e84f387ec0 110.13MB / 110.13MB                       11.4s
 => => sha256:40fcfd711f8db74e87407ed47c1d306a77eefe885d79679595d94f13c905f395 155B / 155B                                0.9s
 => => extracting sha256:666ba61612fd7c93393f9a5bc1751d8a9929e32d51501dba691da9e8232bc87b                                 0.1s
 => => extracting sha256:8ed8ca4862056a130f714accb3538decfa0663fec84e635d8b5a0a3305353dee                                 0.0s
 => => extracting sha256:1ff5b6d8b8c6b6093e19083f398755431fee6120fae681379ad828e84f387ec0                                 4.1s
 => => extracting sha256:40fcfd711f8db74e87407ed47c1d306a77eefe885d79679595d94f13c905f395                                 0.0s
 => [internal] load build context                                                                                         0.0s
 => => transferring context: 39.25kB                                                                                      0.0s
 => [2/9] WORKDIR /app                                                                                                    0.5s
 => [3/9] COPY go.mod ./                                                                                                  0.0s
 => [4/9] COPY go.sum ./                                                                                                  0.0s
 => [5/9] RUN go mod download                                                                                             6.0s
 => [6/9] COPY *.go ./                                                                                                    0.0s
 => [7/9] COPY . .                                                                                                        0.0s
 => [8/9] RUN go build -o github-action-and-github-container-registry                                                     2.9s
 => exporting to image                                                                                                    0.9s
 => => exporting layers                                                                                                   0.9s
 => => writing image sha256:55bdcc06340dd579a1526e3265e0e59a17e555c1fbf8f3097eedc1d9a74d5595                              0.0s
 => => naming to docker.io/qkrgustkd15/github-action-and-github-container-registry:latest                                 0.0s

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
```

```shell
$ docker tag qkrgustkd15/github-action-and-github-container-registry:latest ghcr.io/dev-hyunsang/github-action-and-github-container-registry:latest
# or
$ make docker-tag
```

```shell
$ docker push ghcr.io/dev-hyunsang/github-action-and-github-container-registry:latest
# or
$ make docker-push
The push refers to repository [ghcr.io/dev-hyunsang/github-action-and-github-container-registry]
4edc2bf15653: Pushed
ab0539b23868: Pushed
1ed7ef24ba1e: Pushed
4f29dcd81ab5: Pushed
69d5c17d83ad: Pushed
5fab8f4b47c7: Pushed
5f3326f2a019: Pushed
97aa26b4fc43: Pushed
715cbda62b79: Pushed
b6f786c730a9: Pushed
63a6bdb95b08: Pushed
8d3ac3489996: Pushed
latest: digest: sha256:da869b2d2d4c42b6f345255658d422e326b2dbad57c0a1c4b47de79bbc6a9a5b size: 2826
```