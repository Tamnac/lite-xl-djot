-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
   name = "Djot",
   files = { "%.dj" },

   patterns = {
      { pattern = { "{.-%%", "%%.-}?" },  type = "comment"  }, --comment
      { pattern = { "^>%s", "^\n"},       type = "comment"  }, -- blockquote
      { pattern = { "^#%s", "^\n"},       type = "keyword"  }, -- heading
      { pattern = ":::",                  type = "keyword"  }, -- div
      { pattern = {":", ":"},             type = "operator" }, -- symbol
      { pattern = { "$?$`", "`" },        type = "number"   }, -- math
      { pattern = { "`[^`]", "`" },       type = "string"   }, -- inline code
      { pattern = { "{=", "=}" },         type = "literal"  }, -- highlight
      { pattern = { "{?*", "*}?" },       type = "keyword2" }, -- bold
      { pattern = { "{?_", "_}?" },       type = "keyword2" }, -- italic
      { pattern = { "{%-", "%-}" },       type = "keyword2" }, -- strikethrough/remove
      { pattern = { "{%+", "%+}" },       type = "keyword2" }, -- add/underline
      { pattern = { "%[%^", "%]" },       type = "function" }, -- footnote
      { pattern = { "{?~", "~}?" },       type = "number" }, -- subscript
      { pattern = { "{?%^", "%^}?" },     type = "number" }, -- superscript
      { pattern = { "<", ">" },           type = "function" }, -- link(s)
      { pattern = "%[.-%]()%[.-%]",       type = {"normal", "function"} },
      { pattern = "%[.-%]()%(.-%)",       type = {"normal", "function"} },


      -- code blocks
      { pattern = { "```caddyfile", "```" },  type = "string", syntax = "Caddyfile" },
      { pattern = { "```crystal", "```" },    type = "string", syntax = ".cr" },
      { pattern = { "```c++", "```" },        type = "string", syntax = ".cpp" },
      { pattern = { "```cpp", "```" },        type = "string", syntax = ".cpp" },
      { pattern = { "```python", "```" },     type = "string", syntax = ".py" },
      { pattern = { "```ruby", "```" },       type = "string", syntax = ".rb" },
      { pattern = { "```perl", "```" },       type = "string", syntax = ".pl" },
      { pattern = { "```php", "```" },        type = "string", syntax = ".php" },
      { pattern = { "```javascript", "```" }, type = "string", syntax = ".js" },
      { pattern = { "```json", "```" },       type = "string", syntax = ".js" },
      { pattern = { "```html", "```" },       type = "string", syntax = ".html" },
      { pattern = { "```ini", "```" },        type = "string", syntax = ".ini" },
      { pattern = { "```xml", "```" },        type = "string", syntax = ".xml" },
      { pattern = { "```css", "```" },        type = "string", syntax = ".css" },
      { pattern = { "```lua", "```" },        type = "string", syntax = ".lua" },
      { pattern = { "```bash", "```" },       type = "string", syntax = ".sh" },
      { pattern = { "```sh", "```" },         type = "string", syntax = ".sh" },
      { pattern = { "```java", "```" },       type = "string", syntax = ".java" },
      { pattern = { "```c#", "```" },         type = "string", syntax = ".cs" },
      { pattern = { "```f#", "```" },         type = "string", syntax = ".fs" },
      { pattern = { "```cmake", "```" },      type = "string", syntax = ".cmake" },
      { pattern = { "```d", "```" },          type = "string", syntax = ".d" },
      { pattern = { "```glsl", "```" },       type = "string", syntax = ".glsl" },
      { pattern = { "```c", "```" },          type = "string", syntax = ".c" },
      { pattern = { "```julia", "```" },      type = "string", syntax = ".jl" },
      { pattern = { "```rust", "```" },       type = "string", syntax = ".rs" },
      { pattern = { "```dart", "```" },       type = "string", syntax = ".dart" },
      { pattern = { "```v", "```" },          type = "string", syntax = ".v" },
      { pattern = { "```toml", "```" },       type = "string", syntax = ".toml" },
      { pattern = { "```yaml", "```" },       type = "string", syntax = ".yaml" },
      { pattern = { "```nim", "```" },        type = "string", syntax = ".nim" },
      { pattern = { "```typescript", "```" }, type = "string", syntax = ".ts" },
      { pattern = { "```rescript", "```" },   type = "string", syntax = ".res" },
      { pattern = { "```moon", "```" },       type = "string", syntax = ".moon" },
      { pattern = { "```go", "```" },         type = "string", syntax = ".go" },
      { pattern = { "```lobster", "```" },    type = "string", syntax = ".lobster" },
      { pattern = { "```liquid", "```" },     type = "string", syntax = ".liquid" },
      { pattern = { "```nix", "```" },        type = "string", syntax = ".nix" },
      { pattern = { "```", "```" },           type = "string" },
   },
   symbols = {}
}
