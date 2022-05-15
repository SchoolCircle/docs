---
title: SchoolCircle v1.0.0
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - ruby: Ruby
  - python: Python
  - php: PHP
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
code_clipboard: true
highlight_theme: darkula
headingLevel: 2
generator: "@tarslib/widdershins v4.0.4"

---

# SchoolCircle

> v1.0.0

# register

## POST 注册

POST /register/reg

> Body 请求参数

```json
{
  "email": "p.lljyezt@qq.com",
  "password": "exercitation ea",
  "captcha": "in dolor do Duis consectetur"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» email|body|string|true|邮箱|
|» password|body|string|true|密码|
|» pin|body|string|true|验证码|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 登录

POST /register/login

> Body 请求参数

```json
{
  "pass": "123456",
  "email": "test"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» email|body|string|false|none|
|» password|body|string|false|none|

> 返回示例

> 成功

```json
{
  "code": 200,
  "msg": "success",
  "data": [
    {
      "uid": 2,
      "email": "166974372@qq.com",
      "token": "123"
    }
  ]
}
```

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 重置密码

POST /register/resetPassword

> Body 请求参数

```json
{
  "email": "string",
  "password": "string",
  "pin": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» email|body|string|true|邮箱|
|» password|body|string|true|密码|
|» pin|body|string|true|验证码|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET hello

GET /register/hello

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 发送验证码

POST /register/sendEmail

> Body 请求参数

```json
{
  "email": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» email|body|string|true|邮箱|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# chat

## GET findAllChat

GET /chat/findAllChat

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST findByUid

POST /chat/findByUid

按照用户id查找聊天记录

> Body 请求参数

```json
{
  "id": "1"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 获得聊天记录

POST /chat/getChat

> Body 请求参数

```json
{
  "uid1": "string",
  "uid2": "string",
  "token": "string",
  "pageNum": "string",
  "pageSize": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid1|body|string|true|none|
|» uid2|body|string|true|none|
|» token|body|string|true|none|
|» pageNum|body|string|true|none|
|» pageSize|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 发消息

POST /chat/sendMessage

> Body 请求参数

```json
{
  "uid1": "string",
  "uid2": "string",
  "token": "string",
  "text": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid1|body|string|true|none|
|» uid2|body|string|true|none|
|» token|body|string|true|none|
|» text|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET hello

GET /chat/hello

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 新信息

POST /chat/newMessge

> Body 请求参数

```json
{
  "uid2": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid2|body|string|true|none|
|» token|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# playground

## POST 查看自己的发帖

POST /ground/findMyTweet

查看自己的发帖，仅本人使用，uid和token同一，可以看到被删除的帖子

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string",
  "pageSize": "string",
  "pageNum": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|none|
|» token|body|string|true|none|
|» pageSize|body|string|true|none|
|» pageNum|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 删除帖子

POST /ground/delTweet

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string",
  "tid": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|删除操作的用户(保证是发帖者)|
|» token|body|string|true|none|
|» tid|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 给帖子点赞

POST /ground/addGood

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string",
  "tid": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|点赞用户id|
|» token|body|string|true|none|
|» tid|body|string|true|帖id|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET findAll

GET /ground/findAll

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 查看某人发的帖

POST /ground/findTweetByUid

不支持查看已经被删除的帖子，所有人都可以使用，不需要token

> Body 请求参数

```json
{
  "uid": "string",
  "pagesize": "string",
  "page": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|用户id|
|» pagesize|body|string|true|返回的每页帖子数量|
|» page|body|string|true|返回的页号|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET hello

GET /ground/hello

> Body 请求参数

```json
{}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 评论

POST /ground/addComment

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string",
  "tid": "string",
  "text": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|评论者的id|
|» token|body|string|true|none|
|» tid|body|string|true|评论的帖子id|
|» text|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 发帖

POST /ground/addTweet

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string",
  "text": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|发帖人的id|
|» token|body|string|true|none|
|» text|body|string|true|贴文内容|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET 查看帖子

GET /ground/{pagesize}/{page}

分页返回，pagesize处为每页大小，page处为页数

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|pagesize|path|string|true|none|
|page|path|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# ship

## POST 添加好友

POST /ship/addFriend

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string",
  "uidto": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|none|
|» token|body|string|true|none|
|» uidto|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 查看好友列表

POST /ship/findByUid

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|none|
|» token|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET hello

GET /ship/hello

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 查看添加好友请求

POST /ship/checkFriendAsk

查看别人发送的添加好友请求

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|none|
|» token|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 查看添加好友成功信息

POST /ship/checkFriendSuccess

查看最近的添加好友成功的信息

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|none|
|» token|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST addRelation

POST /ship/addRelation

添加好友

> Body 请求参数

```json
{
  "uid1": "string",
  "uid2": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid1|body|string|true|none|
|» uid2|body|string|true|none|
|» token|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 同意或拒绝添加好友请求

POST /ship/isAdd

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string",
  "isAdd": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» uid|body|string|true|none|
|» token|body|string|true|none|
|» isAdd|body|string|true|1添加，0拒绝|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 查看添加好友失败信息

POST /ship/checkFriendFail

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# test/register

## GET hello

GET /hello

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET TestfindAll

GET /findAll

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST sendEmail

POST /sendEmail

> Body 请求参数

```json
{
  "email": "string"
}
```

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|body|body|object|false|none|
|» email|body|string|true|none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# 数据模型

