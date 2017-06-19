# Install pip first
# $ pip install redis-py-cluster

from rediscluster import StrictRedisCluster
startup_nodes = [{"host": "127.0.0.1", "port": "7379"}]
# Requires at least one node for cluster discovery. Multiple nodes is recommended.

# w/o passwd
#rc = StrictRedisCluster(startup_nodes=startup_nodes, decode_responses=True)

# with passwd
rc = StrictRedisCluster(startup_nodes=startup_nodes, password='kEKbMcmuy2MCVq', decode_responses=True)

rc.set("foo", "bar")
print(rc.get("foo"))
