

tok=$(cat ~/token.gh)

for id in $(cat liste-id.txt); do
    echo "Téléchargement : $id"
    curl -sSL \
      -H "Authorization: token $tok" \
      -H "Accept: application/vnd.github+json" \
      -o "artifact_$id.zip" \
      https://api.github.com/repos/alexandretihy/tp-graphes/actions/artifacts/$id/zip
done

