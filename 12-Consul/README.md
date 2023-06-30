Завдання 1

Use the terraform "consul" provider.
Define a Consul service resource using the "consul_service" resource block.

resource "consul_service" "nginx" {}

Specify the necessary settings for the service, such as name, port, tags, and any additional configuration options.

https://registry.terraform.io/providers/hashicorp/consul/latest/docs/resources/service

Критерій виконання:

Github PR містить файли з Terraform code.

Виконання завдання оформити у вигляді Pull Request з *.tf. Посилання на pull request розмістити у особовому кабінеті.