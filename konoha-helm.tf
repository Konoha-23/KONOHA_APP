#resource "helm_release" "konoha-app" {
#  name       = "konoha"
#  namespace = "konoha"
#  chart      = "konoha"
#  repository = "https://konoha-23.github.io/landmark/"
#  
#  values = [
#    "${file("konoha.yml")}"
#  ]
#
#}
