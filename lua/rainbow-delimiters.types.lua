---@meta


--# Utility Library #--

---Strategy to use for highlighting with rainbow-delimiters
---Must implement `on_attach`, `on_detach` and `on_reset`
---@class rainbow_delimiters.strategy
---`on_attach`: setup the highlighting on attach
---@field on_attach fun(bufnr: integer, settings: rainbow_delimiters.buffer_settings)
---`on_detach`: remove any unneccesary remaining setup on detach
---@field on_detach fun(bufnr: integer)
---`on_reset`: update the highlighting on reset
---@field on_reset fun(bufnr: integer, settings: rainbow_delimiters.buffer_settings)

---@class (exact) rainbow_delimiters.buffer_settings
---@field strategy rainbow_delimiters.strategy
---@field parser LanguageTree
---@field lang string


--# Config #--

---Configuration table for rainbow-delimiters
---@class (exact) rainbow_delimiters.config
---Strategy to use for highlighting
---@field strategy rainbow_delimiters.config.strategies?
---Query to use for highlighting
---@field query rainbow_delimiters.config.queries?
---Highlight priority of rainbow delimiters
---@field priority rainbow_delimiters.config.priorities?
---Highlight colors
---@field highlight string[]?
---Whitelist for languages to highlight
---@field whitelist rainbow_delimiters.language[]?
---Blacklist for languages not to highlight
---@field blacklist rainbow_delimiters.language[]?
---Logging with log file and log level
---@field log rainbow_delimiters.logging?

---@class rainbow_delimiters.config.strategies
---@field [''] (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field astro (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field bash (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field c (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field c_sharp (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field clojure (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field commonlisp (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field cpp (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field css (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field cuda (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field cue (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field dart (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field elixir (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field elm (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field fennel (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field fish (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field go (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field haskell (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field hcl (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field html (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field janet_simple (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field java (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field javascript (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field json (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field json5 (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field jsonc (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field jsonnet (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field julia (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field kotlin (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field latex (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field lua (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field luadoc (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field make (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field markdown (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field nim (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field nix (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field perl (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field php (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field python (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field query (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field r (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field racket (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field regex (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field rst (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field ruby (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field rust (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field scheme (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field scss (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field sql (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field templ (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field terraform (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field toml (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field tsx (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field typescript (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field verilog (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field vim (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field vimdoc (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field vue (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field yaml (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---@field zig (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?
---User defined language, not part of rainbow_delimiters support
---@field [string] (rainbow_delimiters.strategy | fun(): rainbow_delimiters.strategy?)?

---@class rainbow_delimiters.config.queries
---@field [''] ('rainbow-delimiters' | string)?
---@field astro ('rainbow-delimiters' | string)?
---@field bash ('rainbow-delimiters' | string)?
---@field c ('rainbow-delimiters' | string)?
---@field c_sharp ('rainbow-delimiters' | string)?
---@field clojure ('rainbow-delimiters' | string)?
---@field commonlisp ('rainbow-delimiters' | string)?
---@field cpp ('rainbow-delimiters' | string)?
---@field css ('rainbow-delimiters' | string)?
---@field cuda ('rainbow-delimiters' | string)?
---@field cue ('rainbow-delimiters' | string)?
---@field dart ('rainbow-delimiters' | string)?
---@field elixir ('rainbow-delimiters' | string)?
---@field elm ('rainbow-delimiters' | string)?
---@field fennel ('rainbow-delimiters' | string)?
---@field fish ('rainbow-delimiters' | string)?
---@field go ('rainbow-delimiters' | string)?
---@field haskell ('rainbow-delimiters' | string)?
---@field hcl ('rainbow-delimiters' | string)?
---@field html ('rainbow-delimiters' | string)?
---@field janet_simple ('rainbow-delimiters' | string)?
---@field java ('rainbow-delimiters' | string)?
---@field javascript ('rainbow-delimiters' | 'rainbow-parens' | 'rainbow-delimiters-react' | string)?
---@field json ('rainbow-delimiters' | string)?
---@field json5 ('rainbow-delimiters' | string)?
---@field jsonc ('rainbow-delimiters' | string)?
---@field jsonnet ('rainbow-delimiters' | string)?
---@field julia ('rainbow-delimiters' | string)?
---@field kotlin ('rainbow-delimiters' | string)?
---@field latex ('rainbow-delimiters' | 'rainbow-blocks' | string)?
---@field lua ('rainbow-delimiters' | 'rainbow-blocks' | string)?
---@field luadoc ('rainbow-delimiters' | string)?
---@field make ('rainbow-delimiters' | string)?
---@field markdown ('rainbow-delimiters' | string)?
---@field nim ('rainbow-delimiters' | string)?
---@field nix ('rainbow-delimiters' | string)?
---@field perl ('rainbow-delimiters' | string)?
---@field php ('rainbow-delimiters' | string)?
---@field python ('rainbow-delimiters' | string)?
---@field query ('rainbow-delimiters' | string)?
---@field r ('rainbow-delimiters' | string)?
---@field racket ('rainbow-delimiters' | string)?
---@field regex ('rainbow-delimiters' | string)?
---@field rst ('rainbow-delimiters' | string)?
---@field ruby ('rainbow-delimiters' | string)?
---@field rust ('rainbow-delimiters' | string)?
---@field scheme ('rainbow-delimiters' | string)?
---@field scss ('rainbow-delimiters' | string)?
---@field sql ('rainbow-delimiters' | string)?
---@field templ ('rainbow-delimiters' | string)?
---@field terraform ('rainbow-delimiters' | string)?
---@field toml ('rainbow-delimiters' | string)?
---@field tsx ('rainbow-delimiters' | 'rainbow-parens' | string)?
---@field typescript ('rainbow-delimiters' | 'rainbow-parens' | string)?
---@field verilog ('rainbow-delimiters' | 'rainbow-blocks' | string)?
---@field vim ('rainbow-delimiters' | string)?
---@field vimdoc ('rainbow-delimiters' | string)?
---@field vue ('rainbow-delimiters' | string)?
---@field yaml ('rainbow-delimiters' | string)?
---@field zig ('rainbow-delimiters' | string)?
---User defined language, not part of rainbow_delimiters support
---@field [string] string?

---@class rainbow_delimiters.config.priorities
---@field ['']         (integer | fun(): integer?)?
---@field astro        (integer | fun(): integer?)?
---@field bash         (integer | fun(): integer?)?
---@field c            (integer | fun(): integer?)?
---@field c_sharp      (integer | fun(): integer?)?
---@field clojure      (integer | fun(): integer?)?
---@field commonlisp   (integer | fun(): integer?)?
---@field cpp          (integer | fun(): integer?)?
---@field css          (integer | fun(): integer?)?
---@field cuda         (integer | fun(): integer?)?
---@field cue          (integer | fun(): integer?)?
---@field dart         (integer | fun(): integer?)?
---@field elixir       (integer | fun(): integer?)?
---@field elm          (integer | fun(): integer?)?
---@field fennel       (integer | fun(): integer?)?
---@field fish         (integer | fun(): integer?)?
---@field go           (integer | fun(): integer?)?
---@field haskell      (integer | fun(): integer?)?
---@field hcl          (integer | fun(): integer?)?
---@field html         (integer | fun(): integer?)?
---@field janet_simple (integer | fun(): integer?)?
---@field java         (integer | fun(): integer?)?
---@field javascript   (integer | fun(): integer?)?
---@field json         (integer | fun(): integer?)?
---@field json5        (integer | fun(): integer?)?
---@field jsonc        (integer | fun(): integer?)?
---@field jsonnet      (integer | fun(): integer?)?
---@field julia        (integer | fun(): integer?)?
---@field kotlin       (integer | fun(): integer?)?
---@field latex        (integer | fun(): integer?)?
---@field lua          (integer | fun(): integer?)?
---@field luadoc       (integer | fun(): integer?)?
---@field make         (integer | fun(): integer?)?
---@field markdown     (integer | fun(): integer?)?
---@field nim          (integer | fun(): integer?)?
---@field nix          (integer | fun(): integer?)?
---@field perl         (integer | fun(): integer?)?
---@field php          (integer | fun(): integer?)?
---@field python       (integer | fun(): integer?)?
---@field query        (integer | fun(): integer?)?
---@field r            (integer | fun(): integer?)?
---@field racket       (integer | fun(): integer?)?
---@field regex        (integer | fun(): integer?)?
---@field rst          (integer | fun(): integer?)?
---@field ruby         (integer | fun(): integer?)?
---@field rust         (integer | fun(): integer?)?
---@field scheme       (integer | fun(): integer?)?
---@field scss         (integer | fun(): integer?)?
---@field sql          (integer | fun(): integer?)?
---@field templ        (integer | fun(): integer?)?
---@field terraform    (integer | fun(): integer?)?
---@field toml         (integer | fun(): integer?)?
---@field tsx          (integer | fun(): integer?)?
---@field typescript   (integer | fun(): integer?)?
---@field verilog      (integer | fun(): integer?)?
---@field vim          (integer | fun(): integer?)?
---@field vimdoc       (integer | fun(): integer?)?
---@field vue          (integer | fun(): integer?)?
---@field yaml         (integer | fun(): integer?)?
---@field zig          (integer | fun(): integer?)?
---User defined language, not part of rainbow_delimiters support
---@field [integer] (integer | fun(): integer?)?


---@alias rainbow_delimiters.language
---| 'astro'
---| 'bash'
---| 'c'
---| 'c_sharp'
---| 'clojure'
---| 'commonlisp'
---| 'cpp'
---| 'css'
---| 'cuda'
---| 'cue'
---| 'dart'
---| 'elixir'
---| 'elm'
---| 'fennel'
---| 'fish'
---| 'go'
---| 'haskell'
---| 'hcl'
---| 'html'
---| 'janet_simple'
---| 'java'
---| 'javascript'
---| 'json'
---| 'json5'
---| 'jsonc'
---| 'jsonnet'
---| 'julia'
---| 'kotlin'
---| 'latex'
---| 'lua'
---| 'luadoc'
---| 'make'
---| 'markdown'
---| 'nim'
---| 'nix'
---| 'perl'
---| 'php'
---| 'python'
---| 'query'
---| 'r'
---| 'racket'
---| 'regex'
---| 'rst'
---| 'ruby'
---| 'rust'
---| 'scheme'
---| 'scss'
---| 'sql'
---| 'templ'
---| 'terraform'
---| 'toml'
---| 'tsx'
---| 'typescript'
---| 'verilog'
---| 'vim'
---| 'vimdoc'
---| 'vue'
---| 'yaml'
---| 'zig'
---User defined language, not part of rainbow_delimiters support
---| string

---@class (exact) rainbow_delimiters.logging
---@field file ('rainbow_delimiters.log' | string)?
---@field level integer
