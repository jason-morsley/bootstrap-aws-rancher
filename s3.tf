#       _____   ____      
#      / ____| |___ \    
#     | (___     __) |  
#      \___ \   |__ <  
#      ____) |  ___) |  
#     |_____/  |____/  

module "rancher-s3-bucket" {

  source = "jason-morsley/s3-bucket/aws"

  name = local.bucket_name

}

module "rancher-admin-token" {

  source = "jason-morsley/s3-object/aws"

  bucket_name = local.bucket_name

  key     = "/${var.cluster_name}/admin_token.txt"
  content = rancher2_bootstrap.admin.token

  mock_depends_on = module.rancher-s3-bucket
  
}

module "rancher-admin-password" {

  source = "jason-morsley/s3-object/aws"

  bucket_name = local.bucket_name

  key     = "/${var.cluster_name}/admin_password.txt"
  content = random_password.admin-password.result

  mock_depends_on = module.rancher-s3-bucket
  
}