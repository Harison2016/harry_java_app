
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0667c0db79cfb2a9f","subnet-07dc2fd08c10500c3","subnet-08f86ef9d06baf125","subnet-0ba92cf74ebc808bb"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0667c0db79cfb2a9f","subnet-07dc2fd08c10500c3","subnet-08f86ef9d06baf125","subnet-0ba92cf74ebc808bb"]

        tags = {
             "Name" =  "node1"
         } 
  }
}