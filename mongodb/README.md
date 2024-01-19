### Setup tools

```
apt install mongodb-clients
```

### Create user 
```
db.createUser(
    {
        user: "production",
        pwd: "",
        customData: {},
        roles: [{ "role": "readWrite", "db": "production-crawler" }],
    }
)
```


### Create user admin 
```
db.createUser(
    {
        user: "admin_clone",
        pwd: "",
        customData: {},
        roles: [{ "role": "root", "db": "admin" }, { "role": "dbAdmin", "db": "admin" }, { "role": "dbAdminAnyDatabase", "db": "admin" }, { "role": "userAdmin", "db": "admin" }, { "role": "readWriteAnyDatabase", "db": "admin" }, { "role": "clusterAdmin", "db": "admin" }, { "role": "readAnyDatabase", "db": "admin" }, { "role": "userAdminAnyDatabase", "db": "admin" }],
    }
)
```