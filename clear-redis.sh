printf "Clearing redis cached languages in $environment_tier..."
if [ $environment_tier == "production" ]; then
  redis_host="koodo-ss-02-prod.1jit0g.0001.use1.cache.amazonaws.com"
else
  redis_host="koodo-ss-02-stag.df4rwc.0001.usw2.cache.amazonaws.com"
fi

ssh -t $user_id@management.$project-$environment_tier.$domain ssh $role-direct.$project-$environment_tier.$domain "redis-cli -h $redis_host --scan --pattern \"koodo-selfserve*\" | xargs redis-cli -h $redis_host del"
echo "Done"