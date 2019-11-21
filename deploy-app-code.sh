printf "Deploy app code to $environment_tier prototype box..."
ssh -t $user_id@management.$project-$environment_tier.$domain ssh $role-direct.$project-$environment_tier.$domain "sudo ansible-playbook /data/deployment/deploy.yml"
echo "Done"