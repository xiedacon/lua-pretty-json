# lua-pretty-json

[![MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/xiedacon/lua-pretty-json/blob/master/LICENSE)

## Usage

```lua
local json = require "pretty.json"

local str = json.stringify({
    "aa\"\a\v", "ccc", true, false,
    {
        a = "a",
        b = "a",
        "aaa", "ccc", "ddd",
    }
}, nil, 4)

print(str)
-- [
--     "aa\"\u0007\u000b",
--     "ccc",
--     true,
--     false,
--     {
--         "1": "aaa",
--         "2": "ccc",
--         "3": "ddd",
--         "a": "a",
--         "b": "a"
--     }
-- ]


json.parse(str)
```

## API

* json.stringify(obj, replacer, space, print_address)
  * ``obj`` ``<any>`` 需要序列化的值
  * ``replacer`` ``<function>`` 同 [js JSON.stringify](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/JSON/stringify)
  * ``space`` ``<number>`` 空格数
  * ``print_address`` ``<boolean>`` 输出内存地址
* json.parse(str, without_null)
  * ``str`` ``<string>`` 需要反序列化的值
  * ``without_null`` ``<boolean>`` 是否输出 null 值，默认使用 ``json.null``
* json.null

## License

[MIT License](https://github.com/xiedacon/lua-pretty-json/blob/master/LICENSE)

Copyright (c) 2018 xiedacon
