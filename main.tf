module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.29"
  vpc_id = "vpc-07e3e196e806c5972"

  private_subnets = ["subnet-04c853b7e929e8270", "subnet-0c04f95564c07a34f"]
  public_subnets  = ["subnet-0be886d2b66cb612e", "subnet-0be30742607e390a8"]
}