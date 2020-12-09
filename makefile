create:
        zip function.zip index.js

        aws lambda create-function --function-name TestFunction \
                --zip-file fileb://function.zip --handler index.hello --runtime nodejs12.x \
                --timeout 10 --memory-size 1024 \
                --role arn:aws:iam::${LAMBDA_ROLE_ARN}

update:
        zip function.zip index.js
        aws lambda update-function-code --function-name TestFunction --zip-file fileb://function.zip

run:
        aws lambda invoke --function-name TestFunction outputfile
        cat outputfile
        rm outputfile
