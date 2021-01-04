docker build -f docker/Dockerfile.prod -t granhof/microblog:latest .
docker push granhof/microblog:latest

cd ansible

ansible-playbook gather_vm_instances.yml appServer.yml

cd ..