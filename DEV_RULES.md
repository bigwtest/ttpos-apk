# 开发规范

## 项目结构

项目使用 Melos 进行包管理，包结构如下：

```
.
├── apps                                             # 应用
│   ├── merchant                                     # 商户端
│   ├── dashboard                                    # 平台端
│   ├── pos                                          # 收银机端
│   ├── assistant                                    # 点餐助手端
│   ├── tablet                                       # 平板点餐端
│   ├── mobile                                       # 移动扫码端
│   ├── kds                                          # 厨显端
│   └── ...
├── packages                                         # 包
│   ├── api                                          # API
│   ├── dotenv                                       # 环境变量
│   ├── goserver                                     # gomobile 服务端
│   ├── i18n                                         # i18n 多语言包
│   ├── logger                                       # 日志包
│   ├── model                                        # 模型包
│   ├── server                                       # dart 服务端
│   ├── shared                                       # 公共包
│   ├── ui                                           # UI 公共包
│   └── ...
├── melos.yaml                                       # Melos配置文件
└── pubspec.yaml                                     # Flutter项目配置文件
```

## 对接规范

### 模型编写

- 所有 response 模型必须继承 [BaseResponse](packages/model/lib/base_response.dart)
  - code (`int` 除了 **1** 以外的值都是错误, 有些错误值还需要对应的前端提示)
  - message (`String`)
  - data (`Object` 即便是空值也是空对象 `{}`)
    - list (`List` 所有的列表返回都必须以 `list` 作为顶层)
    - meta (`Object` 一般用于分页信息)
      - page (`int` 当前页码)
      - page_size (`int` 每页条数)
      - total (`int` 总条数)
      - total_pages (`int` 总页数)
      - locale (`String` 仅限当前所支持的语言环境, 如 `zh`、`en` 等)

- 结合 freezed 使用, 类型名称命名遵循 `PascalCase` 标准
- 公共的模型在 `packages/model/lib/[model]` 中, 文件命名遵循 `snake_case` 标准
- 终端相关的模型在 `apps/[终端]/lib/model/[model]` 中, 文件命名遵循 `snake_case` 标准

### 接口定义

- 所有接口必须继承 [BaseApi](packages/api/lib/base_api.dart)
- 接口命名遵循 `PascalCase` 标准
- 接口定义在 `packages/api/lib/[api]` 中，文件命名遵循 `snake_case` 标准

### 接口调用

- 所有**获取**接口
  - 只能使用 ```GET```, 禁止使用其他 Method
  - 请求禁止包含请求体 Body
  - 列表请求路径使用复数形式, 如 ```/api/orders```
  - 详情请求路径使用单数形式, 且在路径中明确指出 ID, 如 ```/api/order/[id]```
- 所有**创建/更新**接口
  - 只能使用 ```POST```, 禁止使用其他 Method
  - 请求必须包含请求体 Body
  - 请求路径中必须包含 ID, 如 ```/api/order/[id]```
- 所有**删除**接口
  - 只能使用 ```DELETE```, 禁止使用其他 Method
  - 请求禁止包含请求体 Body
  - 请求路径中必须包含 ID, 如 ```/api/order/[id]```
- 无权限接口
  - 心跳
  - 登录
  - 图形验证码
- 有权限接口 (JWT)
  - 在请求头中包含 `Authorization` 字段, 值为 `Bearer [token]`

## 代码规范

### 命名约定

- 变量名
  - 使用语义化的小驼峰命名法（如 isLoading、hasError）
  - 禁止使用数字代替
- 类名
  - 使用语义化的大驼峰命名法（如 UserProfile）
  - 禁止使用数字代替
- 文件名
  - 使用语义化的小写字母和下划线（如 user_profile.dart）
  - 禁止使用数字代替
- 常量名
  - 使用语义化的大写字母和下划线（如 API_BASE_URL）
  - 禁止使用数字代替

### Dart/Flutter 规范

- 不可变组件
  - 对于不可变组件，使用 const 构造函数
- Freezed
  - 使用 Freezed 生成不可变状态类和联合类型
- 箭头语法
  - 使用箭头语法编写简单的函数和方法
- 表达式正文
  - 优先使用表达式正文编写一行 Getter 和 Setter
- 尾随逗号
  - 使用尾随逗号改善格式和 diff
- 无状态小部件优先
  - 优先使用无状态小部件
- 应用入口
  - 使用 GetMaterialApp 作为应用入口，使用 GetX 实现导航和深链接
- 内置小部件
  - 使用 Flutter 的内置小部件，并创建自定义小部件
- 响应式设计
  - 实现响应式设计，使用 LayoutBuilder 或 MediaQuery
- 一致性样式
  - 使用主题确保应用中的一致性样式

### 杂项

- 调试
  - 使用 logging 而不是 print 进行调试
- 状态管理
  - 使用 GetX controllers 做状态管理
- 代码行长度
  - 代码行不应超过 80 个字符，为多参数函数在闭合括号前添加逗号
- 多语言
  - 禁止直接使用字符串, 必须通过GetX 的 tr 函数进行多语言支持