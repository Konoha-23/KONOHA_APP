resource "kubernetes_service_v1" "konoha-svc" {
  metadata {
    name = "konoha"
    namespace = "konoha"
  }
  spec {
    selector = {
      app = "konoha"
    }
    port {
      port        = 80
      target_port = 8080
    }

    type = "ClusterIP"
  }
}
