if [ -z "$component" -o -z "$env" -o -z "$ssh_password" ]; then
  echo Input missing from command line
  exit 1
fi
ansible-playbook -i $component-$env.vikramdevops.store, -e env=$env -e ansible_user=ec2-user -e ansible_password=$ssh_password -e component=$component main.yml

# ssh_password=DevOps321 env=dev component=cart bash run.sh
