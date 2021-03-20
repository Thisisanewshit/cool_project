data "template_file" "deployment" {
  # template = "${file("${path.module}/deployment.yaml")}"
#   template = "./yaml/deployment.yaml"
  template = "${file("${path.module}/deployment_service.yaml")}"

  vars={
    # replicas_num = "3"
    # service_name = "nginx"
    # deployment_port = "80"
    replicas_num = "${var.replicas_num}"
    service_name = "${var.service_name}"
    tag = "${var.tag}"
    deployment_port = "${var.deployment_port}"
    service_port = "${var.service_port}"
  }
}


