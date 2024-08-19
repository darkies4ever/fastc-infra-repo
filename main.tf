module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.29"
  vpc_id = "vpc-07a9432b98e6ce795"

  private_subnets = ["subnet-09a8a29c1aaf0303e", "subnet-04530b19fd1e47bb3"]
  public_subnets  = ["subnet-0397ecb2f16692a34", "subnet-03c63919efb453876"]
}