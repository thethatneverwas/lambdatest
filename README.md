# README

This is a very simple npm handler to test AWS Lambda.

1. Before you run, you need to configure your AWS CLI with your developer keys. You also need to create and configure a Lambda role.

```sh

export AWS_ACCESS_KEY_ID=[access key]
export AWS_SECRET_ACCESS_KEY=[secret access key]
export AWS_DEFAULT_REGION=us-west-2
export LAMBDA_ROLE_ARN=[lambda role arn]
```

2. To build the function and create a new Lambda with it, use `make create`.

3. To rebuild and update it, use `make update`.

4. To invoke the lambda and output the results, use `make run`.
