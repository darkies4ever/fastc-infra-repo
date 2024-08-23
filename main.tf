module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.29"
  vpc_id = "vpc-0f48398d7ef5a8c6d"

  private_subnets = ["subnet-0a2e3b135eba3e404", "subnet-03012a71ae9f649c0"]
  public_subnets  = ["subnet-08fa7f01ce73e4f53", "subnet-03888f7e7928f2176"]
}
