# Deploy to AWS EB
eb init udagramproject --region us-east-1 --platform node.js
eb use Udagramproject-env
eb deploy Udagramproject-env