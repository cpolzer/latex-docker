// docker-bake.hcl
target "docker-metadata-action" {
    context = "."
    target = "docker-metadata-action"
}

target "build" {
  inherits = ["docker-metadata-action"]
  dockerfile = "Dockerfile"
  platforms = [
    "linux/amd64",
    "linux/arm/v6",
    "linux/arm/v7",
    "linux/arm64",
    "linux/386"
  ]
}