" Copyright 2015 Yu Huang. All rights reserved.
"
" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
"     http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.

let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter || !has("conceal")
  finish
endif

""
" Fold the visually selected columns.
vmap <unique> <silent> <leader>fc <Plug>(foldcol-VFoldCol)<CR>
" vnoremap <unique> <silent> <leader>fc :<C-U>VFoldCol<CR>
