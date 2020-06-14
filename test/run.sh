cd $(dirname $0)
cd ..

echo "TRAVIS_REPO_SLUG is $TRAVIS_REPO_SLUG"
echo "TRAVIS_BRANCH is $TRAVIS_BRANCH"
echo "TRAVIS_PULL_REQUEST is $TRAVIS_PULL_REQUEST"

if [ "$TRAVIS_REPO_SLUG" == 'NoraUi/noraui-select2-plugin' ] && [ "$TRAVIS_BRANCH" == 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    echo "******** Starting deploy snapshot"
    mvn -e -U clean package --settings test/mvnsettings.xml
    exit $?
fi
echo "***************   END build of noraui-select2-plugin  ***************"
exit 0
