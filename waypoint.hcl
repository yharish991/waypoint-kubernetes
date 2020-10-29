project = "helloworld-go"

app "helloworld-go" {
    build {
        use "pack" {
            builder="gcr.io/buildpacks/builder:v1"
        }
        registry {
          use "docker" {
            image = "YOUR_USER_NAME/helloworld-go"
            tag   = "latest"
            local = false
        }
      }
    }
  deploy {
    use "kubernetes" {
    probe_path = "/"
    service_port = 8080
    }
  }

  release {
    use "kubernetes" {
    load_balancer = true
    port = 80
    }
  }
 }
