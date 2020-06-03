#      _____         _   _            ___          _ _ 
#     |  __ \ ____  | | | |          / _ \        | | |
#     | |__) / __ \/ __) __)_      _| | | |_ __ __| | |
#     |  ___/ / _` \__ \__ \ \ /\ / / | | | '__/ _` | |
#     | |  | | (_| (   (   /\ V  V /| |_| | | | (_| |_|
#     |_|   \ \__,_||_| |_|  \_/\_/  \___/|_|  \__,_(_)
#            \____/                                    

# https://www.terraform.io/docs/providers/random/r/password.html

resource "random_password" "admin-password" {

  length = 25

  lower       = true
  min_lower   = 5
  upper       = true
  min_upper   = 5
  number      = true
  min_numeric = 5
  special     = true
  min_special = 3

}