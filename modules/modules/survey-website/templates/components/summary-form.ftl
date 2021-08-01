<!doctype>
<html>

<head>
  <title>jsPDF</title>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/survey-website/webresources/css/smoothness/jquery-ui-1.8.17.custom.css">
  <link rel="stylesheet" type="text/css" href="${ctx.contextPath}/.resources/survey-website/webresources/css/main.css">

  <script type="text/javascript" src="${ctx.contextPath}/.resources/survey-website/webresources/js/jquery/jquery-1.7.1.min.js"></script>
  <script type="text/javascript" src="${ctx.contextPath}/.resources/survey-website/webresources/js/jquery/jquery-ui-1.8.17.custom.min.js"></script>
  <script type="text/javascript" src="${ctx.contextPath}/.resources/survey-website/webresources/dist/jspdf.umd.js"></script>
  <script type="text/javascript" src="${ctx.contextPath}/.resources/survey-website/webresources/js/basic.js"></script>

  <script>
    window.jsPDF = window.jspdf.jsPDF;
    
    $(function () {
      $("#accordion-basic, #accordion-text, #accordion-graphic, #accordion-font").accordion({
        autoHeight: false,
        navigation: true
      });
      $("#tabs").tabs();
      $(".button").button();
    });
  </script>
</head>

<body>


  <h1>jsPDF Demos</h1>

    <a href="javascript:demoLandscapeTextAlign()" class="button">Run Code</a></p>

</body>

</html>

<script>
function demoTextAlign() {
  var pdf = new jsPDF("p", "pt", "letter");

  pdf.setFillColor(0);
  pdf.circle(140, 50, 2, "F");
  pdf.text("This text is normally\raligned.", 140, 50);

  pdf.circle(140, 120, 2, "F");
  pdf.text("This text is centered\raround\rthis point.", 140, 120, "center");

  pdf.circle(140, 300, 2, "F");
  pdf.text(
    "This text is rotated\rand centered around\rthis point.",
    140,
    300,
    45,
    "center"
  );
};
    function demoLandscapeTextAlign() {
        var pdf = new jsPDF("l", "pt", "a4");
        
        //Headline
        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(30)
        pdf.text(50, 50, "Your Value Statements Generator");
        pdf.setTextColor(0,0,0);

        //Abstract text
        size = 16
        margin = 80; // inches on a 8.5 x 11 inch sheet.
        verticalOffset = margin;
        text= "Here is a simple tool to help you build your most relevant KSA items in easy-to-remember sentences that we call Value Statements. No matter what professional situation you  nd yourself in Your Value Statements are your core value propositions as a professional. You can use these statements to easily create elevator pitches, create impact in your CV, nail important conversations like job interviews, or to win business with prospective clients.";
        
        pdf
        .setDrawColor(0, 0, 0)
        .setLineWidth(1 / 72)

        lines = pdf
            .setFont("Times","Roman")
            .setFontSize(16)
            .splitTextToSize(text, 750);
    
        pdf.text(50, verticalOffset + size / 72, lines);
        verticalOffset += ((lines.length + 0.5) * size) / 72;

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(50)
        pdf.text(50, 200, "1");

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 180, "My knowledge of");


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 180, "AND/OR my strong skill with");

         pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 220, "combined with my");


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 220, "means I consistently achieve");

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(560, 260, "for my employers/clients.");

        pdf.line(50, 280, 800, 280);

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(50)
        pdf.text(50, 350, "2");

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 330, "My knowledge of");


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 330, "AND/OR my strong skill with");

         pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 220, "combined with my");


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 370, "means I consistently achieve");

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(560, 410, "for my employers/clients.");

        pdf.line(50, 430, 800, 430);

        pdf.setTextColor(33, 100, 120);
        pdf.setFontSize(50)
        pdf.text(50, 500, "3");
        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 480, "My knowledge of");


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 480, "AND/OR my strong skill with");

         pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(100, 520, "combined with my");


        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(450, 520, "means I consistently achieve");

        pdf.setTextColor(0, 0, 0);
        pdf.setFontSize(16)
        pdf.text(560, 560, "for my employers/clients.");

        pdf.save("Test.pdf");
    };
  </script>
