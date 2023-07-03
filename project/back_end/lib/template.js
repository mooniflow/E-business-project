
var template ={
  html:function (title, list, body, control, authStatusUI = '<a href="/auth/login">login</a>'){
    return  `
      <!doctype html>
      <html>
      <head>
        <title>돌봄 게시판 - ${title}</title>
        <meta charset="utf-8">
      </head>
      <body>
        ${authStatusUI}
        <h1><a href="/">돌봄 게시판</a></h1>
        <h3>( id: e_trade@gmail.com, password: 111111 )</h3>
        ${list}
        ${control}
        ${body}
      </body>
      </html>
      `;
  },
  list:function (filelist){
    var list = '<ul>';
    var i = 0;
    while (i < filelist.length) {
      list = list + `<li><a href="/topic/${filelist[i]}">${filelist[i]}</a></li>`;
      i = i + 1;
    }

    list = list + '</ul>';
    return list;
  }
}

module.exports = template;
