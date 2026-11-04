

tok=$(cat ~/token.gh)

curl -L \
  -H "Authorization: token $tok" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/alexandretihy/tp-graphes/actions/artifacts > gh-artifacts.json



curl -L \
  -H "Authorization: token $tok" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  --output artifact.zip \
  https://api.github.com/repos/alexandretihy/tp-graphes/actions/artifacts/13040087554/zip

unzip artifact.zip
