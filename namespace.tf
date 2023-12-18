resource "kubernetes_namespace_v1" "konoha-namespace" {
  metadata {
    name = "konoha"
  }
}
