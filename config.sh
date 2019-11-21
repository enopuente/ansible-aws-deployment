user_id="x169954"
domain=teluswebteam.com
aws_regions=(us-west-2 us-west-1 us-east-1)
autoscaling_group_desired_capacity_production=12
autoscaling_group_desired_capacity_staging=3

if [ $1 == "production" ]; then
  instance_id="i-0c29ff4967db6c06e"
else
  instance_id="i-083faa6a65db6389c"
fi
