<!DOCTYPE html>
<html xml:lang="en" lang="en" class="no-js">
    <head>
        [@cms.page /]
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="${ctx.contextPath}/.resources/seminario/webresources/css/bootstrap.css" media="all">
    </head>
    <body>
      <div class="container">
          <div class="panel panel-info">
              <div class="panel-heading">
                  <h3 class="panel-title">Ciao! Hello Magnolia!</h3>
              </div>
              <div class="panel-body">
                ${def.description!"No description"}
              </div>
          </div>
      </div>
    </body>
</html>
