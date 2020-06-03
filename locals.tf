#      _                     _
#     | |                   | |
#     | |     ___   ___ __ _| |___
#     | |    / _ \ / __/ _` | / __|
#     | |___| (_) | (_| (_| | \__ \
#     |______\___/ \___\__,_|_|___/

locals {

  bucket_name = "${var.cluster_name}-${random_pet.bucket-name.id}"
  
}