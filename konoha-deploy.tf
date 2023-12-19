resource "kubernetes_deployment_v1" "konoha-deploy" {
  metadata {
    name = "konoha"
    namespace = "konoha"
  }

  spec {
    replicas = 2
    strategy {
        type = "RollingUpdate"
        rolling_update {
            max_surge = 1
            max_unavailable = 1
        }
      }
    min_ready_seconds = 30
    selector {
      match_labels = {
        app = "konoha"
      }
    }

    template {
      metadata {
        labels = {
          app = "konoha"
        }
      }

      spec {
        container {
          image = "princebabs/konoha:latest"
          name  = "konoha-pod"

          port {
            container_port = 8080
          }

          resources {
            limits = {
              cpu    = ".5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}
