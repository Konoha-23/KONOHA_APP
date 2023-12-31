resource "helm_release" "konoha-app1" {
  name       = "konoha1"
  namespace = "default"
  chart      = "konoha"
  repository = "https://konoha-23.github.io/landmark/"
  
  values = [
    "${file("konoha.yml")}"
  ]

}
