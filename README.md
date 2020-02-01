#### just note making api in rails.

#### This contains user login with authentication and json token authorization.

#### The api end points to use and all responses are in Json format

#### GET end points

| Endpoint                    | Response                                                 |
| --------------------------- | -------------------------------------------------------- |
| :3000/api/v1/notes          | array of objects with each note data                     |
| :3000/api/v1/notes/id/items | array of objects with each item data of particular notes |

#### POST end points

| Endpoint                    | Response                      |
| --------------------------- | ----------------------------- |
| :3000/signup                | user auth token,user id       |
| :3000/auth/login            | user auth token, user id      |
| :3000/api/v1/notes          | return created note as object |
| :3000/api/v1/notes/id/items | return created item as object |

#### PUT and DELETE end points

| Endpoint                       | Response               |
| ------------------------------ | ---------------------- |
| :3000/api/v1/notes/id          | return modified object |
| :3000/api/v1/notes/id/items/id | return modified object |
