
[#assign homePage = cmsfn.parent(content) /]
[#assign steps = homePage.steps /]<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/survey-website/webresources/css/bootstrap.min.css" /> 
    <script src="${ctx.contextPath}/.resources/survey-website/webresources/js/jquery-3.3.1.slim.min.js"></script>
    <script src="${ctx.contextPath}/.resources/survey-website/webresources/js/popper.min.js" ></script>
    <script src="${ctx.contextPath}/.resources/survey-website/webresources/js/bootstrap.min.js" ></script>
    <script src="${ctx.contextPath}/.resources/survey-website/webresources/js/jspdf.min.js" ></script>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <base target="_parent">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.0/css/all.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.19.1/css/mdb.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/compiled-addons-4.19.1.min.css">
    <link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb-plugins-gathered.min.css">
    <style>.steps-form {
    display: table;
    width: 100%;
    position: relative; }
.steps-form .steps-row {
    display: table-row; }
.steps-form .steps-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 100%;
    height: 1px;
    background-color: #ccc; }
.steps-form .steps-row .steps-step {
    display: table-cell;
    text-align: center;
    position: relative; }
.steps-form .steps-row .steps-step p {
    margin-top: 0.5rem; }
.steps-form .steps-row .steps-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important; }
.steps-form .steps-row .steps-step .btn-circle {
    width: 30px;
    height: 30px;
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
    border-radius: 15px;
    margin-top: 0; }</style><style type="text/css">/* Chart.js */
@-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style>
    <style>
    * {
      box-sizing: border-box;
    }

    body {
      background-color: #f1f1f1;
    }

    #regForm {
      background-color: #ffffff;
      margin: 100px auto;
      font-family: Raleway;
      padding: 40px;
      width: 70%;
      min-width: 300px;
    }

    h1 {
      text-align: center;  
    }

    input {
      padding: 10px;
      width: 100%;
      font-size: 17px;
      font-family: Raleway;
      border: 1px solid #aaaaaa;
    }

    /* Mark input boxes that gets an error on validation: */
    input.invalid {
      background-color: #ffdddd;
    }

  

    button {
      background-color: #4CAF50;
      color: #ffffff;
      border: none;
      padding: 10px 20px;
      font-size: 17px;
      font-family: Raleway;
      cursor: pointer;
    }

    button:hover {
      opacity: 0.8;
    }

    #prevBtn {
      background-color: #bbbbbb;
    }

    /* Make circles that indicate the steps of the form: */
    .step {
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #bbbbbb;
      border: none;  
      border-radius: 50%;
      display: inline-block;
      opacity: 0.5;
    }

    .step.active {
      opacity: 1;
    }

    /* Mark the steps that are finished and valid: */
    .step.finish {
      background-color: #4CAF50;
    }
    </style>
  </head>
  <body class="home ${cmsfn.language()}">
  <div class="steps-form">
      <div class="steps-row setup-panel">
        [#list steps as step]

          <div class="steps-step" style="max-width: 150px;">
          [#if content.step == (step?index +1)?string]
            <a href="#" type="button" class="btn btn-indigo btn-circle" >${step?index +1}</a>
          [#else]
            <a href="#" type="button" class="btn btn-default btn-circle" disabled="disabled">${step?index +1}</a>
          [/#if]  
            <p>${step}</p>
          </div>
        [/#list]
        
      </div>
    </div>
    [@cms.area name="main" /]
    <script type="text/javascript">
    window.addEventListener('keydown',function(e){if(e.keyIdentifier=='U+000A'||e.keyIdentifier=='Enter'||e.keyCode==13){if(e.target.nodeName=='INPUT'&&e.target.type=='text'){e.preventDefault();return false;}}},true);
    </script>
   </body>
</html>
