var fs=require('fs');
var path=require('path');
var cp=function(src,dst) {
    src=path['normalize'](src);
    dst=path['normalize'](dst);
    var a=dst['split'](path['sep']);
    var n=a['length'];
    var i;
    for (i=0;i<n-1;i++) {
        try {
            fs['mkdirSync'](a[i]);
        }
        catch (e) {
        }
        process['chdir'](a[i]);
    }
    for (i=0;i<n-1;i++) {
        process['chdir']('..');
    }
    fs['createReadStream'](src)['pipe'](fs['createWriteStream'](dst));
};
cp('vimrc','build/.vimrc');
cp('modules/vim-pathogen/autoload/pathogen.vim','build/.vim/autoload/pathogen.vim');
cp('modules/vim-monokai/colors/monokai.vim','build/.vim/colors/monokai.vim');
cp('modules/solarized/vim-colors-solarized/autoload/togglebg.vim','build/.vim/autoload/togglebg.vim');
cp('modules/solarized/vim-colors-solarized/bitmaps/togglebg.png','build/.vim/bitmaps/togglebg.png');
cp('modules/solarized/vim-colors-solarized/colors/solarized.vim','build/.vim/colors/solarized.vim');
cp('modules/solarized/vim-colors-solarized/doc/solarized.txt','build/.vim/doc/solarized.txt');
cp('modules/solarized/vim-colors-solarized/doc/tags','build/.vim/doc/tags');
cp('modules/vim-javascript/syntax/javascript.vim','build/.vim/syntax/javascript.vim');
cp('modules/vim-javascript/indent/javascript.vim','build/.vim/indent/javascript.vim');
cp('modules/vim-pug/syntax/pug.vim','build/.vim/syntax/pug.vim');
cp('modules/vim-pug/indent/pug.vim','build/.vim/indent/pug.vim');

