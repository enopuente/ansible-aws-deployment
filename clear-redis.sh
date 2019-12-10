printf "Clearing redis cached languages in $environment_tier..."
ssh -t $user_id@management.$project-$environment_tier.$domain ssh $role-direct.$project-$environment_tier.$domain "bash /data/scripts/clear-redis.sh"
echo "Done"