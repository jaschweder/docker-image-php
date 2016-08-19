# Trigger downstream images
curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token $TRAVIS_TOKEN" \
  -d "{\"request\":{\"branch\":\"5.6-sybase-server\"}}" \
  https://api.travis-ci.org/repo/jaschweder%2Fdocker-image-php/requests
