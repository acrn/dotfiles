" create public getter for a private variable
" requiers a "// getters" comment somewhere
" uses mark p
nnoremap <Leader>mg mpyy/\/\/.*getterspciwpublic$xyiw~higetA() {
            \return this.pA;}`p

" creates a public void setter
" requiers a "// setters" comment somewhere
" uses mark p
nnoremap <Leader>msv mpyy/\/\/.*setterspciwpublic void$xyiwA) {bbbi(Pb~
            \bisetothis.pA = pA;}`p

" creates a public setter returning "this"
" requiers a "// setters" comment somewhere
" uses mark p
nnoremap <Leader>msb mpyy/\/\/.*setterspciwpublic$xyiwA) {bbbPa(b~hiset
            \othis.pA = pA;return this;}?[ \t]class[ \t]wwyaw
            \/\/\/.*settersjwP`p
