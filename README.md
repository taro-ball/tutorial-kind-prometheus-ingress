This code accompanies my article on dev.to:  
https://dev.to/emeraldspark/prometheus-with-nginx-ingress-on-kind-kubernetes-cluster-324g

## Quick setup:
1.  Install the dependencies:  
    docker, kind, helm, kubectl, git-bash (if on Windows)
1. Clone this repo,
    - check out [simple-prometheus](https://github.com/taro-ball/tutorial-kind-prometheus-ingress/tree/simple-prometheus) branch for simple (non-ingress) setup  
OR
    - the latest commit for ingress setup
1. Run `./create_cluster.sh`
1. Add the hosts entry (see the last echo of the script)
