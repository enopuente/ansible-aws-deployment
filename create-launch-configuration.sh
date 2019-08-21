printf "create launch configuration ($launch_configuration_name)"
launch_configuration="aws autoscaling create-launch-configuration \
  --launch-configuration-name $launch_configuration_name \
  --image-id $image_id \
  --instance-type $instance_type \
  --associate-public-ip-address \
  --security-groups $security_group_ids"

  if [ $environment_tier != "production" ]; then
    launch_configuration="$launch_configuration --spot-price 0.044"
  fi

 launch_configuration=`$launch_configuration`
echo " . done"