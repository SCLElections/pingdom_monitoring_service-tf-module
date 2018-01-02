resource "pingdom_check" "root_domain" {
  name                     = "${var.domain}"
  host                     = "${var.domain}"
  type                     = "http"
  resolution               = 1
  sendtoemail              = true
  sendnotificationwhendown = 2
  notifywhenbackup         = true
  encryption               = "${var.https}"
  contactids               = ["${var.contactids}"]
  integrationids           = "${var.integrationids}"

  lifecycle {
    create_before_destroy = true
  }
}
