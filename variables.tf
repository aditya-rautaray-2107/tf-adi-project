variable "ec2" {
  type = map(object({
    ami           = string
    subnet_id     = string
    instance_type = string
    sgs = map(object({
      port = number
    }))
    tags = map(string)

  }))
  default = {
    "burpsuite" = {
      ami           = "ami-0324a83b82023f0b3"
      instance_type = "t3.micro"
      subnet_id     = "subnet-0fc8af1dc8a9df1f0"
      sgs = {
        administration = {
          port = 3389
        },
        web = {
          port = 80

        }
      }


      tags = {
        Name = "BurpSuite"
        OS   = "Windows"
      }

    },
    "jmeter" = {
      ami           = "ami-06b21ccaeff8cd686"
      subnet_id     = "subnet-0abea9cc9092db9e2"
      instance_type = "t3.micro"

      sgs = {
        administration = {
          port = 22
        },
        web = {
          port = 80
        }
      }
      tags = {
        Name = "Jmeter"
        OS   = "Linux"
      }
    }
  }
}