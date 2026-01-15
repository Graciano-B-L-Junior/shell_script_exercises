echo "##########################"
echo "VERIFYING IF SOME ENVIRONMENT VARIABLES ARE SET"
echo "##########################"
echo ""

for env in DB_HOST, DB_USER, DB_PASS;
do
    if [[ -z "${env}" ]];then
        echo "Environment variable $env is not set"
        exit 1
    fi
done