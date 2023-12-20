##NGINX

resource "kubernetes_ingress_v1" "konoha-ingress" {
  wait_for_load_balancer = true
  metadata {
    name = "tesla"
    namespace = "konoha"
    annotations = {
        "cert-manager.io/cluster-issuer" = "konoha-issuer"
  }
  }
  spec {
    ingress_class_name = "nginx"
    tls {
      secret_name = "tesla-secret"
      hosts = ["landmark.devopsnetwork.net"] 
    }
    rule {
      host = "landmark.devopsnetwork.net"  
      http {
        path {
          path = "/"
          backend {
            service {
              name = "konoha-svc"
              port {
                number = 8080
              }
            }
          }
        }
      }
    }
  }
}

