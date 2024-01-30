AWS_REGION=`cat /.bottlerocket/bootstrap-containers/current/user-data | jq -r .config.awsregion`
AWS_SECRET_ID=`cat /.bottlerocket/bootstrap-containers/current/user-data | jq -r .config.awssecretid`

aws secretsmanager get-secret-value --region ${AWS_REGION} --secret-id ${AWS_SECRET_ID} --output=json | jq -r .SecretString > /tmp/config.json

apiclient set --json `cat /tmp/config.json`
