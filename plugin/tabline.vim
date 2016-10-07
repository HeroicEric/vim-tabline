if exists('g:loaded_vim_tabline')
  finish
endif

let g:loaded_vim_tabline = 1

function TabLine()
  let s = ''

  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T'

    " the label is made by MyTabLabel()
    let s .= ' %{TabLabel(' . (i + 1) . ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

  " right-align the label to close the current tab page
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999Xclose'
  endif

  return s
endfunction

function TabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let bufnr = buflist[winnr - 1]
  let bufname = bufname(bufnr)
  let bufmodified = getbufvar(bufnr, "&mod")

  let label = ''

  if bufmodified
    let label .= '+ '
  endif

  let parts = split(fnamemodify(bufname, ':f'), '/')

  if len(parts) == 1
    let label .= parts[0]
  elseif len(parts) > 1
    let label .= join(parts[-2:-1], '/')
  else
    let label .= '[No Name]'
  endif

  return label
endfunction

set tabline=%!TabLine()
