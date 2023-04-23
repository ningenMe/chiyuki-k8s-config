# ningenme.net

| symbol                           | repository                                                           | responsibility                                         | tech-stack          |
|----------------------------------|----------------------------------------------------------------------|--------------------------------------------------------|---------------------|
| ![chiyuki](./image/chiyuki.jpeg) | [chiyuki-k8s-config](https://github.com/ningenMe/chiyuki-k8s-config) | 趣味開発アプリケーション全般のk8sクラスタ管理                               | kubernetes          |  
| ![akari](./image/akari.jpeg)     | [akari-front](https://github.com/ningenMe/akari-front)               | [ningenme.net](https://ningenme.net/) のフロント全般          | typescript + nextjs | 
| ![akari](./image/nina.png)       | [nina-api](https://github.com/ningenMe/nina-api)                     | githubのcontiribution集計ドメインのapi                         | go                  | 
| ![suzu](./image/suzu.jpeg)       | [suzu-api](https://github.com/ningenMe/suzu-api)                     | ブログ管理ドメインのapi                                          | rust                | 
| ![kiwa](./image/kiwa.png)        | [kiwa-api](https://github.com/ningenMe/kiwa-api)                     | 認証認可api                                                | kotlin + spring boot | 

```shell
for repo in chiyuki-k8s-config akari-front nina-api suzu-api kiwa-api miiko-api
do
  gh secret set ROLE_TO_ASSUME --body "$ROLE_TO_ASSUME" --repo=ningenMe/$repo
  gh secret set AWS_ACCOUNT_ID --body "$AWS_ACCOUNT_ID" --repo=ningenMe/$repo
  gh secret set DEPLOY_TOKEN --body "$DEPLOY_TOKEN" --repo=ningenMe/$repo
  gh secret set AWS_ECR_REGISTRY --body "$AWS_ECR_REGISTRY" --repo=ningenMe/$repo
done
```
