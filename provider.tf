################ Creating Provider ###########

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
    profile    = "${var.aws_profile}"
}

provider "kubernetes" {

host                   = aws_eks_cluster.ekscluster.endpoint
cluster_ca_certificate = base64decode(aws_eks_cluster.ekscluster.certificate_authority[0].data)
token                  = data.aws_eks_cluster_auth.eksauth.token
load_config_file       = false

}
