resource "kubernetes_service_v1" "svc" {
  metadata {
    name      = var.svc_name
    namespace = kubernetes_namespace_v1.namespace.metadata.0.name
  }
  spec {
    selector = {
      img_location = "ecr"
    }
    port {
      port        = 8000
      target_port = 8000
    }

    type = "LoadBalancer"
  }
}
