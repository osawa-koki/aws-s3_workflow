# aws-s3_workflow

AWS S3をTerraformとGitHub ActionsでCI/CDに載せるサンプルプロジェクトです。  

## イロイロ設定

GitHubのシークレットに以下の値を設定してください。  

| シークレット名 | 説明 |
| --- | --- |
| AWS_ACCESS_KEY_ID | AWSのアクセスキー |
| AWS_SECRET_ACCESS_KEY | AWSのシークレットキー |
| AWS_REGION | AWSのリージョン |

## 参考資料

- [Terraform(S3)](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
- [GitHub ActionsでウェブサイトをAmazon S3にデプロイする(classmethod)](https://dev.classmethod.jp/articles/deploy-web-site-with-github-actions/)
