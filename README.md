# Role-Based Access Control in Neo4j

Code for the GraphAcademy lab Role-Based Access Control in Neo4j.

| File | Purpose |
|---|---|
| `docker-compose.yml` | Runs the latest Neo4j Enterprise image with a healthcheck |
| `seed/seed.cypher` | A small subset of the recommendations dataset: movies, genres, users and ratings. The `email` and `dateOfBirth` values on `User` are synthetic. |
| `seed/reset.cypher` | Drops the users and roles created in the lab (run against the `system` database) |
| `.devcontainer/devcontainer.json` | GitHub Codespaces configuration with Docker available |

Start the database and load the data:

```bash
docker compose up -d --wait
cat seed/seed.cypher | docker exec -i neo4j cypher-shell \
  -u neo4j -p neo4j-password
```

Start again from scratch:

```bash
cat seed/reset.cypher | docker exec -i neo4j cypher-shell \
  -u neo4j -p neo4j-password -d system
```
