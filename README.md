# aws-aurora-s3-ec2

## usage
```bash
./docker/run.sh
```

## init
### build docker
```bash
./docker/build.sh
```

### init cdk project
```bash
./docker/run.sh
```
```bash
PRJ_NAME=PROJECT_NAME \
&& mkdir $PRJ_NAME && cd $PRJ_NAME \
&& npx cdk init --language typescript \
&& touch ../.gitignoer \
&& cat .gitignore >> ../.gitignore \
&& rm .gitignore \
&& rm README.md \
&& mv * .[^\.]* .. \
&& cd .. \
&& rm -rf $PRJ_NAME
```

PRJ_NAME=aws-aurora-s3-ec2 \
&& mkdir $PRJ_NAME && cd $PRJ_NAME \
&& npx cdk init --language typescript \
&& touch ../.gitignoer \
&& cat .gitignore >> ../.gitignore \
&& rm .gitignore \
&& rm README.md \
&& mv * .[^\.]* .. \
&& cd .. \
&& rm -rf $PRJ_NAME
