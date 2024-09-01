resource "kubernetes_deployment_v1" "deployment" {
  metadata {
    name = var.deployment_name
    labels = {
      img_location = "ecr"
    }
    namespace = kubernetes_namespace_v1.namespace.metadata.0.name
  }

  spec {
    replicas = 1
    strategy {
      type = "RollingUpdate"
    }

    selector {
      match_labels = {
        img_location = "ecr"
      }
    }

    template {
      metadata {
        labels = {
          img_location = "ecr"
        }
      }

      spec {
        container {
          image = "${data.azurerm_container_registry.acr.login_server}/shortletimage:latest"
          name  = "shortlet-container"
          image_pull_policy = "Always"
          resources {
            limits = {
              cpu               = "2"
              memory            = "4Gi"
              #ephemeral-storage = "4Gi"
            }
            requests = {
              cpu               = "1"
              memory            = "2Gi"
              #ephemeral-storage = "4Gi"
            }
          }

          port {
            container_port = 8000
            host_port      = 8000
            
          }

        }


      }
    }


  }
}
