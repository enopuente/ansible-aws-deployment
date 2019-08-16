printf "clear redis cache"
ssh -t $user_id@management.$project-$environment_tier.$domain ssh $role-direct.$project-$environment_tier.$domain "redis-cli -h koodo-ss-02-stag.df4rwc.0001.usw2.cache.amazonaws.com keys \"koodo-selfserve*\" | xargs redis-cli -h koodo-ss-02-stag.df4rwc.0001.usw2.cache.amazonaws.com del"
echo " . done"