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
cp('modules/vim-monokai/colors/monokai.vim','build/.vim/colors/monokai.vim');
cp('modules/vim-javascript/syntax/javascript.vim','build/.vim/syntax/javascript.vim');
cp('modules/vim-javascript/indent/javascript.vim','build/.vim/indent/javascript.vim');

