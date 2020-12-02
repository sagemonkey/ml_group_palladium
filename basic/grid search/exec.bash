export PALLADIUM_CONFIG=config.py
echo '=============================================='
echo 'TRAIN MODEL'
echo '=============================================='
pld-grid-search --persist-best
sleep 5
echo '=============================================='
echo 'TEST MODEL'
echo '=============================================='
pld-test
sleep 10
echo '=============================================='
echo 'SERVE MODEL'
echo '=============================================='
pld-devserver