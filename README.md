This is the experiment :construction_worker_man:

**terraform.tfvars (sample)**
```terraform
notifications_type          = "ALL"
notifications_emails        = ["email@equinix.com"]
purchase_order_number       = "PO"
connection_name             = "VC_name"
connection_type             = "IP_VC"
bandwidth                   = 50
zside_ap_type               = "SP"
zside_ap_authentication_key = "AWS_account"
zside_ap_profile_type       = "L2_PROFILE"
zside_location              = "TY"
zside_seller_region         = "ap-northeast-1"
zside_fabric_sp_name        = "AWS Direct Connect"

aws_gateway_name         = "aws_gateway"
aws_gateway_asn          = ASN
aws_vif_name             = "vif_name"
aws_vif_address_family   = "ipv4"
aws_vif_bgp_asn          = ASN
aws_vif_amazon_address   = "169.254.0.1/30"
aws_vif_customer_address = "169.254.0.2/30"
aws_vif_bgp_auth_key     = "secret"
project_id               = "project_id"
fcr_name                 = "fcr_name"
account_number           = "account_number"
```
