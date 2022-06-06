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
generator: "@tarslib/widdershins v4.0.11"

---

# SchoolCircle

> v1.0.0

# register

## GET 查询用户信息

GET /register/findUserInfoByUid/{uid}

### 请求参数

|名称|位置|类型|必选|说明|
|---|---|---|---|---|
|uid|path|string| 是 |none|

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
      "uname": "书住复最动间",
      "phone": "19845070251",
      "qq": "laboris dolor occaecat",
      "wechat": "et nulla ea",
      "sex": "enim cillum irure voluptate",
      "college": "dolore mollit aliqua deserunt",
      "img": "demo.jpg"
    }
  ]
}
```

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» email|body|string| 否 | 邮箱|none|
|» password|body|string| 否 | 密码|none|

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

## POST 上传头像

POST /register/upload

> Body 请求参数

```yaml
file: file://C:\Users\daidai\Desktop\demo.jpg

```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» file|body|string(binary)| 否 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» email|body|string| 是 ||邮箱|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» email|body|string| 是 ||邮箱|
|» password|body|string| 是 ||密码|
|» pin|body|string| 是 ||验证码|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET 获取头像

GET /register/images/demo.jpg

把demo.jpg换成读到的头像的文件名

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 设置用户信息

POST /register/resetUserInfo

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string",
  "email": "string",
  "uname": "string",
  "phone": "string",
  "qq": "string",
  "wechat": "string",
  "sex": "string",
  "college": "string",
  "img": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|
|» token|body|string| 是 ||none|
|» email|body|string| 否 ||邮箱，不可修改，无意义|
|» uname|body|string| 否 ||用户名|
|» phone|body|string| 是 ||电话|
|» qq|body|string| 是 ||none|
|» wechat|body|string| 是 ||微信|
|» sex|body|string| 是 ||性别|
|» college|body|string| 是 ||学院|
|» img|body|string| 是 ||图片|

> 返回示例

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» email|body|string| 是 ||邮箱|
|» password|body|string| 是 ||密码|
|» pin|body|string| 是 ||验证码|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# chat

## GET hello

GET /chat/hello

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## GET findAllChat

GET /chat/findAllChat

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid1|body|string| 是 ||none|
|» uid2|body|string| 是 ||none|
|» token|body|string| 是 ||none|
|» pageNum|body|string| 是 ||none|
|» pageSize|body|string| 是 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid1|body|string| 是 ||none|
|» uid2|body|string| 是 ||none|
|» token|body|string| 是 ||none|
|» text|body|string| 是 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid2|body|string| 是 ||none|
|» token|body|string| 是 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# playground

## POST 查看帖子下的评论

POST /ground/findCommentByTid

> Body 请求参数

```json
{
  "tid": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» tid|body|string| 是 ||帖子号|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 查看自己的发帖

POST /ground/findMyTweet

查看自己的发帖，仅本人使用，uid和token同一，可以看到被删除的帖子，如果不需要被删除的帖子，请使用findTweetByUid

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|
|» token|body|string| 是 ||none|
|» pageSize|body|string| 是 ||none|
|» pageNum|body|string| 是 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|

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

## GET 查看帖子

GET /ground/{pagesize}/{page}

分页返回，pagesize处为每页大小，page处为页数

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|pagesize|path|string| 是 ||none|
|page|path|string| 是 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||删除操作的用户(保证是发帖者)|
|» token|body|string| 是 ||none|
|» tid|body|string| 是 ||none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 查看某人的所有评论

POST /ground/findCommentByUid

> Body 请求参数

```json
{
  "uid": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 添加评论

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||评论者的id|
|» token|body|string| 是 ||none|
|» tid|body|string| 是 ||评论的帖子id|
|» text|body|string| 是 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||点赞用户id|
|» token|body|string| 是 ||none|
|» tid|body|string| 是 ||帖id|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||用户id|
|» pagesize|body|string| 是 ||返回的每页帖子数量|
|» page|body|string| 是 ||返回的页号|

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
  "text": "string",
  "title": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||发帖人的id|
|» token|body|string| 是 ||none|
|» text|body|string| 是 ||贴文内容|
|» title|body|string| 是 ||贴文标题|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# ship

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|
|» token|body|string| 是 ||none|
|» isAdd|body|string| 是 ||1添加，0拒绝|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 添加关注

POST /ship/addFollow

> Body 请求参数

```json
{
  "followed": "string",
  "following": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» followed|body|string| 是 ||被关注者|
|» following|body|string| 是 ||关注者|
|» token|body|string| 是 ||关注者token|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|
|» token|body|string| 是 ||none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST addRelation

POST /ship/addRelation

添加好友，必定添加成功，,内部接口，请勿使用。

> Body 请求参数

```json
{
  "uid1": "string",
  "uid2": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid1|body|string| 是 ||none|
|» uid2|body|string| 是 ||none|
|» token|body|string| 是 ||none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 取消关注

POST /ship/delFollow

> Body 请求参数

```json
{
  "followed": "string",
  "following": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» followed|body|string| 是 ||被关注者|
|» following|body|string| 是 ||关注者|
|» token|body|string| 是 ||关注者tkoen|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 添加好友

POST /ship/addFriendAsk

> Body 请求参数

```json
{
  "uid1": "string",
  "token": "string",
  "uid2": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid1|body|string| 是 ||none|
|» token|body|string| 是 ||none|
|» uid2|body|string| 是 ||none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 关注列表

POST /ship/findFollowingByUid

返回传入的uid关注的人

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|
|» token|body|string| 是 ||没啥用，但是传一下|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

## POST 被关注列表

POST /ship/findFollowedByUid

返回关注传入uid的人的列表

> Body 请求参数

```json
{
  "uid": "string",
  "token": "string"
}
```

### 请求参数

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|
|» token|body|string| 是 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|
|» token|body|string| 是 ||none|

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

## GET hello

GET /ship/hello

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» uid|body|string| 是 ||none|
|» token|body|string| 是 ||none|

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

|名称|位置|类型|必选|中文名|说明|
|---|---|---|---|---|---|
|body|body|object| 否 ||none|
|» email|body|string| 是 ||none|

> 返回示例

### 返回结果

|状态码|状态码含义|说明|数据模型|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|成功|Inline|

### 返回数据结构

# 数据模型

