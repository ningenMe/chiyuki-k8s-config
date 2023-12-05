# ningenme.net

| symbol                                                                         | repository                                                                                                  | responsibility                                | tech-stack           |
|--------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|-----------------------------------------------|----------------------|
| <img src="./document/image/chiyuki.jpeg" alt="image" width="100" height="100"> | [chiyuki-k8s-config](https://github.com/ningenMe/chiyuki-k8s-config)                                        | 趣味開発アプリケーション全般のk8sクラスタ管理                      | kubernetes           |  
| <img src="./document/image/akari.jpeg" alt="image" width="100" height="100">   | [akari-front](https://github.com/ningenMe/akari-front)                                                      | [ningenme.net](https://ningenme.net/) のフロント全般 | typescript + nextjs  | 
| <img src="./document/image/nina.png" alt="image" width="100" height="100">     | [nina-api](https://github.com/ningenMe/nina-api) <br/> [nina-batch](https://github.com/ningenMe/nina-batch) | githubのcontiribution集計ドメインのapi                | go                   | 
| <img src="./document/image/suzu.jpeg" alt="image" width="100" height="100">    | [suzu-backend](https://github.com/ningenMe/suzu-backend)                                                    | ブログ管理ドメインのapi/batch                           | rust                 | 
| <img src="./document/image/kiwa.png" alt="image" width="100" height="100">     | [kiwa-api](https://github.com/ningenMe/kiwa-api)                                                            | 認証認可api                                       | kotlin + spring boot | 

```shell
for repo in chiyuki-k8s-config akari-front nina-api suzu-api kiwa-api miiko-api
do
  gh secret set ROLE_TO_ASSUME --body "$ROLE_TO_ASSUME" --repo=ningenMe/$repo
  gh secret set AWS_ACCOUNT_ID --body "$AWS_ACCOUNT_ID" --repo=ningenMe/$repo
  gh secret set DEPLOY_TOKEN --body "$DEPLOY_TOKEN" --repo=ningenMe/$repo
  gh secret set AWS_ECR_REGISTRY --body "$AWS_ECR_REGISTRY" --repo=ningenMe/$repo
done
```
