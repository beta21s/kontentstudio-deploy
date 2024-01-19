# Kontent Studio Deploy


#
db.createUser(
    {
        user: "dev",
        pwd: "",
        customData: {},
        roles: [{ "role": "readWrite", "db": "dev-crawler" }],
    }
)


db.createUser(
    {
        user: "admin_clone",
        pwd: "<cleartext password>",

        customData: {},

        roles: [{ "role": "dbAdminAnyDatabase", "db": "admin" }, { "role": "clusterAdmin", "db": "admin" }, { "role": "userAdminAnyDatabase", "db": "admin" }, { "role": "dbAdmin", "db": "admin" }, { "role": "root", "db": "admin" }, { "role": "userAdmin", "db": "admin" }, { "role": "readWriteAnyDatabase", "db": "admin" }, { "role": "readAnyDatabase", "db": "admin" }],
    }
)

